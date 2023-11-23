import pymysql

db_config = {
    'user':'natanhmc',
    'password':'1q2w3e4r5t',
    'host':'db4free.net',
    'database':'linkedin123',
    'port':3306
}



def carregar_grafo_do_banco():
    # Conecte-se ao banco de dados
    conn = pymysql.connect(**db_config)

    # Crie um cursor
    cursor = conn.cursor()

    # Selecione todos os contatos
    cursor.execute("SELECT id, nome, perfil_linkedin FROM contatos")

    # Crie um dicionário para armazenar o grafo
    grafo = {}

    # Itere sobre os contatos
    for contato in cursor:
        # Adicione o contato ao dicionário
        grafo[contato[0]] = []

        # Selecione todas as conexões do contato
        cursor.execute("SELECT contato1_id, contato2_id FROM conexoes")

        # Itere sobre as conexões
        for conexao in cursor:
            # Adicione a conexão ao dicionário
            grafo[contato[0]].append(conexao[1] if conexao[0] == contato[0] else conexao[0])

    # Feche o cursor e a conexão com o banco de dados
    cursor.close()
    conn.close()

    return grafo

grafo = carregar_grafo_do_banco()

print(grafo)