import mysql.connector
import heapq

def openConnection():
    conn = mysql.connector.connect(
    host="db4free.net",
    port=3306,
    database="linkedin123",
    user="natanhmc",
    password="1q2w3e4r5t"
    )
    conn.start_transaction()

    return conn

def getCursor(mydb):
    cursor = mydb.cursor()

    return cursor

def closeCall(currentCon):
    currentCon.commit()
    currentCon.close()

# ---------------------------------------------------------------------------



# ---------------------------------------------------------------------------

def criar_banco():
    conn = openConnection()
    cursor = getCursor(conn)

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

    closeCall(conn)

def adicionar_contato(nome,perfil_linkedin):
    conn = openConnection()
    cursor = getCursor(conn)

    try:
        cursor.execute("SELECT * FROM contatos WHERE perfil_linkedin = %s",(perfil_linkedin,))
        if cursor.fetchone() is None:
            cursor.execute('''
                            INSERT INTO contatos (nome, perfil_linkedin) VALUES (%s,%s)
                            ''',(nome,perfil_linkedin))
        else:
            print("Esse usuário já está cadastrado")
        closeCall(conn)
    except mysql.connector.Error:
        print("Algo deu errado no mysql")

    closeCall(conn)

def listar_contatos():
    conn = openConnection()
    cursor = getCursor(conn)

    cursor.execute('SELECT * FROM contatos')
    contatos = cursor.fetchall()

    closeCall(conn)
    return contatos

def adicionar_conexao(contato1_id,contato2_id):
    conn = openConnection()
    cursor = getCursor(conn)

    cursor.execute('BEGIN')

    try:
        cursor.execute('SELECT * FROM conexoes WHERE (contato1_id = %s AND contato2_id = %s) OR (contato1_id = %s AND contato2_id = %s) ',(contato1_id,contato2_id,contato2_id,contato1_id))

        if cursor.fetchone() is None:
            cursor.execute('INSERT INTO conexoes (contato1_id,contato2_id) VALUES (%s,%s)',(contato1_id,contato2_id))
        else:
            print("Conexão já existe")

        conn.commit()
    except mysql.connector.Error as erro:
        conn.rollback()
        print(erro)
    
    conn.close()

def listar_conexoes(cont_id):
    conn = openConnection()
    cursor = getCursor(conn)

    cursor.execute('''
        SELECT contatos.id, contatos.nome
        FROM contatos
        JOIN conexoes ON contatos.id = CASE
            WHEN conexoes.contato1_id = %s THEN conexoes.contato2_id
            ELSE conexoes.contato1_id
        END
        WHERE (conexoes.contato1_id = %s OR conexoes.contato2_id = %s)
    ''', (cont_id, cont_id, cont_id))

    conexoes = cursor.fetchall()
    closeCall(conn)
    return conexoes

def excluir_contato(cont_id):
    conn = openConnection()
    cursor = getCursor(conn)

    try:
        cursor.execute('''
            DELETE FROM conexoes WHERE contato1_id = %s OR contato2_id = %s
        ''',(cont_id,cont_id))
    except mysql.connector.Error:
        print("Esse usuário não tem conexões :(")

    cursor.execute('''
        DELETE FROM contatos WHERE id = %s
    ''',(cont_id,))
    
    closeCall(conn)

def excluir_conexao(id1,id2):
    conn = openConnection()
    cursor = getCursor(conn)

    cursor.execute('''
        DELETE 
        FROM conexoes 
        WHERE (contato1_id = %s AND contato2_id = %s) OR (contato1_id = %s AND contato2_id = %s)
    ''',(id1,id2,id2,id1))

    closeCall(conn)

# /-------------------------------------------------/------------------------------------/
def encontrar_contatos_sem_conexao():
    conn = openConnection()
    cursor = getCursor(conn)

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
    closeCall(conn)
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
    distances = {contact: float('inf') for contact in graph}
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

#/-------------------------------------------------/-------------------------------------------------/

def menu():
    
    while True:
        print('''
            1- Adicionar contato\n
            2- Adicionar conexão\n
            3- Listar contatos\n
            4- Listar conexões\n
            5- Excluir contato\n
            6- Excluir conexão\n
            7- Verificar se todos possuem conexões\n
            8- Caminho mais curto\n
            0- Sair\n
        ''')

        escolha = input("Escolha uma opção:")

        match escolha:

            case "1":
                nome = input("Nome do contato: ")
                perfil_linkedin = input("Perfil do LinkedIn: ")
                adicionar_contato(nome,perfil_linkedin)

            case "2":
                try:
                    con_id1 = int(input("ID primeiro contato: "))
                    con_id2 = int(input("ID segundo contato: "))
                    adicionar_conexao(con_id1,con_id2)
                except ValueError:
                    print("Insira um valor válido para ID!")

            case "3":
                ctts = listar_contatos()
                print("Lista de contatos:")
                if not ctts:
                    print("Nenhum contato encontrado")
                else:
                    for contato in ctts:
                        print(f"ID: {contato[0]} | Nome: {contato[1]} | Perfil LinkedIn: {contato[2]}")

            case "4":
                try:
                    ctt_id = int(input("ID do contato: "))
                    cnxs = listar_conexoes(ctt_id)
                    if not cnxs:
                        print("Nenhuma conexão encontrada com esse usuário :(")
                    else:
                        for con in cnxs:
                            print(f"Nome: {con[0]}")
                except ValueError:
                    print("Insira um valor válido para ID!")

            case "5":
                try:
                    ctt_id = int(input("ID do contato:"))
                    excluir_contato(ctt_id)
                except ValueError:
                    print("Insira um valor válido para ID!")

            case "6":
                id1 = int(input("Informe o primeiro ID da conexão a ser excluída: "))
                id2 = int(input("Informe o segundo ID da conexão a ser excluída: "))
                excluir_conexao(id1,id2)

            case "7":
                contatos_sem_conn = encontrar_contatos_sem_conexao()
                if contatos_sem_conn:
                    print("Contatos sem conexão:")
                    for lonely in contatos_sem_conn:
                        print(f"ID:{lonely[0]}, Nome: {lonely[1]}")
                else:
                    print("Todos os contatos têm ao menos uma conexão")

            case "8":
                ctt1_id = input("Informe o primeiro ID: ")
                ctt2_id = input("Informe o segundo ID: ")
                encontrar_caminho_mais_curto(ctt1_id,ctt2_id)
            case "0":
                return
            
            case _:
                print("Opção inválida")

if __name__ == "__main__":
    criar_banco()
    menu()