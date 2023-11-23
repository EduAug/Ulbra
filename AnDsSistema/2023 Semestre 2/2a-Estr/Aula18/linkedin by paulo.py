import mysql.connector
import heapq


db_config = {
    'user':'natanhmc',
    'password':'1q2w3e4r5t',
    'host':'db4free.net',
    'database':'linkedin123',
    'port':3306
}


# Função para criar o banco de dados
def criar_banco():
    conn = mysql.connector.connect(**db_config)
    cursor = conn.cursor()

    cursor.execute('''
        CREATE TABLE IF NOT EXISTS contatos (
            id INT PRIMARY KEY AUTO_INCREMENT,
            nome VARCHAR(50),
            perfil_linkedin VARCHAR(50)
        );
    ''')

    cursor.execute('''
        CREATE TABLE IF NOT EXISTS conexoes (
            id INT PRIMARY KEY AUTO_INCREMENT,
            contato1_id INT,
            contato2_id INT,
            FOREIGN KEY (contato1_id) REFERENCES contatos(id),
            FOREIGN KEY (contato2_id) REFERENCES contatos(id)
        );
    ''')

    conn.commit()
    conn.close()

# Função para adicionar um contato
def adicionar_contato(nome, perfil_linkedin):
    conn = mysql.connector.connect(**db_config)
    cursor = conn.cursor()

    try:
        cursor.execute('SELECT * FROM contatos WHERE perfil_linkedin = %s', (perfil_linkedin,))
        if cursor.fetchone() is None:
            cursor.execute('INSERT INTO contatos (nome, perfil_linkedin) VALUES (%s, %s)', (nome, perfil_linkedin))
            conn.commit()
        else:
            print("Contato já cadastrado.")
    except mysql.connector.Error as erro:
        print(f"Ocorreu um erro {erro}. Tente novamente.")


    conn.close()

# Função para listar contatos
def listar_contatos():
    conn = mysql.connector.connect(**db_config)
    cursor = conn.cursor()

    cursor.execute('SELECT * FROM contatos')
    contatos = cursor.fetchall()

    conn.close()
    return contatos

# Função para adicionar uma conexão
def adicionar_conexao(contato1_id, contato2_id):
    conn = mysql.connector.connect(**db_config)
    cursor = conn.cursor()

    cursor.execute('BEGIN')
    
    try:
        cursor.execute('SELECT * FROM conexoes WHERE (contato1_id = %s AND contato2_id = %s) OR (contato1_id = %s AND contato2_id = %s)',
                      (contato1_id, contato2_id, contato2_id, contato1_id))

        if cursor.fetchone() is None:
            cursor.execute('INSERT INTO conexoes (contato1_id, contato2_id) VALUES (%s, %s)', (contato1_id, contato2_id))
        else:
            print("A conexão entre esses contatos já existe.")
        
        conn.commit()
        
    except mysql.connector.Error as erro:
        conn.rollback()
        print(f"Ocorreu um erro {erro}. Tente novamente.")
        
    conn.close()

# Função para listar conexões de um contato
def listar_conexoes(contato_id):
    conn = mysql.connector.connect(**db_config)
    cursor = conn.cursor()

    cursor.execute('''
        SELECT contatos.nome
        FROM contatos
        JOIN conexoes ON contatos.id = CASE
            WHEN conexoes.contato1_id = %s THEN conexoes.contato2_id
            ELSE conexoes.contato1_id
        END
        WHERE conexoes.contato1_id = %s OR conexoes.contato2_id = %s
    ''', (contato_id, contato_id, contato_id))

    conexoes = cursor.fetchall()
    conn.close()
    return conexoes

def excluir_contato(id):
    conn = mysql.connector.connect(**db_config)
    cursor = conn.cursor()
    cursor.execute('DELETE FROM conexoes WHERE contato1_id = %s OR contato2_id = %s', (id, id))
    cursor.execute('DELETE FROM contatos WHERE id = %s', (id))

    conn.commit()
    conn.close()

def excluir_conexao(id1, id2):
    conn = mysql.connector.connect(**db_config)
    cursor = conn.cursor()
    cursor.execute('DELETE FROM conexoes WHERE (contato1_id = %s AND contato2_id = %s) OR (contato1_id = %s AND contato2_id = %s)', (id1, id2, id2, id1))

    conn.commit()
    conn.close()


def listar_conexoes(contato_id):
    conn = mysql.connector.connect(**db_config)
    cursor = conn.cursor()

    cursor.execute('''
        SELECT contatos.id, contatos.nome
        FROM contatos
        JOIN conexoes ON contatos.id = CASE
            WHEN conexoes.contato1_id = %s THEN conexoes.contato2_id
            ELSE conexoes.contato1_id
        END
        WHERE conexoes.contato1_id = %s OR conexoes.contato2_id = %s
    ''', (contato_id, contato_id, contato_id))

    conexoes = cursor.fetchall()
    conn.close()
    return conexoes

def encontrar_contatos_sem_conexao():
    conn = mysql.connector.connect(**db_config)
    cursor = conn.cursor()

    # Seleciona todos os contatos que não têm conexões
    cursor.execute('''
        SELECT contatos.id, contatos.nome
        FROM contatos
        WHERE contatos.id NOT IN (
            SELECT DISTINCT contato1_id FROM conexoes
            UNION
            SELECT DISTINCT contato2_id FROM conexoes
        )
    ''')

    contatos_sem_conexao = cursor.fetchall()
    conn.close()
    return contatos_sem_conexao


def construir_grafo(conexoes):
    graph = {}

    for conexao in conexoes:
        contato_id, contato_nome = conexao[0], conexao[1]

        if contato_id not in graph:
            graph[contato_id] = []

    return graph

def adicionar_conexoes_ao_grafo(graph, conexoes):
    for conexao in conexoes:
        contato_id, _ = conexao[0], conexao[1]

        # Adiciona as conexões ao grafo
        for outra_conexao in conexoes:
            outra_contato_id, _ = outra_conexao[0], outra_conexao[1]

            if contato_id != outra_contato_id and (outra_contato_id, 1) not in graph[contato_id]:
                graph[contato_id].append((outra_contato_id, 1))  # Adiciona a conexão com peso 1

    return graph

def encontrar_caminho_mais_curto(contato1_id=int, contato2_id=int):
    # Obtém as conexões do banco de dados
    conexoes = listar_conexoes(contato1_id,) + listar_conexoes(contato2_id,)

    # Construir o grafo a partir das conexões no banco de dados
    graph = construir_grafo(conexoes)
    graph = adicionar_conexoes_ao_grafo(graph, conexoes)

    # Exibir o grafo antes de executar o algoritmo de Dijkstra
    print("Grafo:")
    for key, value in graph.items():
        print(f"{key}: {value}")

    # Executar o algoritmo de Dijkstra
    distancias = dijkstra(graph, int(contato1_id))  # Certifique-se de converter para inteiro
    contato2_id = int(contato2_id)  # Certifique-se de converter para inteiro

    # Mostrar a distância mínima entre os dois contatos
    distancia_minima = distancias[contato2_id]
    print(f"A distância mínima entre os contatos {contato1_id} e {contato2_id} é: {distancia_minima}")



def dijkstra(graph, start):
    # Inicialização do algoritmo
    distances = {contact: float('infinity') for contact in graph}
    distances[start] = 0
    priority_queue = [(0, start)]

    while priority_queue:
        current_distance, current_contact = heapq.heappop(priority_queue)

        if current_distance > distances[current_contact]:
            continue

        for neighbor, weight in graph[current_contact]:
            distance = current_distance + weight

            if distance < distances[neighbor]:
                distances[neighbor] = distance
                heapq.heappush(priority_queue, (distance, neighbor))

    return distances



# Função principal do menu
def menu():
    while True:
        print("\n1. Adicionar Contato")
        print("2. Listar Contatos")
        print("3. Adicionar Conexão")
        print("4. Listar Conexões de um Contato")
        print("5. Excluir contato")
        print("6. Excluir Conexão" )
        print("7. Verificar se todos tem alguma conexão")
        print("8. Caminho mais curto")
        print("0. Sair")

        escolha = input("Escolha uma opção: ")

        if escolha == "1":
            nome = input("Nome do contato: ")
            perfil_linkedin = input("Perfil do LinkedIn: ")
            adicionar_contato(nome, perfil_linkedin)
        elif escolha == "2":
            contatos = listar_contatos()
            print("Lista de Contatos:")
            for contato in contatos:
                print(f"ID: {contato[0]}, Nome: {contato[1]}, Perfil LinkedIn: {contato[2]}")
        elif escolha == "3":
            contato1_id = int(input("ID do primeiro contato: "))
            contato2_id = int(input("ID do segundo contato: "))
            adicionar_conexao(contato1_id, contato2_id)
        elif escolha == "4":
            contato_id = int(input("ID do contato: "))
            conexoes = listar_conexoes(contato_id)
            print("Conexões do Contato:")
            for conexao in conexoes:
                print(conexao[0])
        elif escolha == "5":
            id = input("Informe o ID do contato a ser excluído: ")
            excluir_contato(id)
        elif escolha == "6":
            id1 = input("Informe o ID do primeiro contato: ")
            id2 = input("Informe o ID do segundo contato: ")
            excluir_conexao(id1, id2)

        elif escolha == "7":
            contatos_sem_conexao = encontrar_contatos_sem_conexao()
            if contatos_sem_conexao:
                print("Contatos sem conexões:")
                for contato in contatos_sem_conexao:
                    print(f"ID: {contato[0]}, Nome: {contato[1]}")
            else:
                print("Todos os contatos têm pelo menos uma conexão.")

        elif escolha == "8":
            contato1_id = input("Informe o ID do primeiro contato: ")
            contato2_id = input("Informe o ID do segundo contato: ")
            encontrar_caminho_mais_curto(contato1_id, contato2_id)
        elif escolha == "0":
            break
        else:
            print("Opção inválida. Tente novamente.")

if __name__ == "__main__":
    criar_banco()
    menu()
