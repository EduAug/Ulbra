import sqlite3
import os

def openConnection():
    full_database_local = os.path.join(os.getcwd(),'linkedin_network.db')
    conn = sqlite3.connect(full_database_local)

    return conn

def getCursor(currentCon):
    cursor = currentCon.cursor()

    return cursor

def closeCall(currentCon):
    currentCon.commit()
    currentCon.close()

# ---------------------------------------------------------------------------

def criar_banco():
    conn = openConnection()
    cursor = getCursor(conn)

    cursor.execute('''
        CREATE TABLE IF NOT EXISTS contatos (
            id INTEGER PRIMARY KEY,
            nome TEXT,
            perfil_linkedin TEXT
        )
    ''')

    cursor.execute('''
        CREATE TABLE IF NOT EXISTS conexoes (
            id INTEGER PRIMARY KEY,
            contact_id1 INTEGER,
            contact_id2 INTEGER,
            FOREIGN KEY (contact_id1) REFERENCES contatos(id),
            FOREIGN KEY (contact_id2) REFERENCES contatos(id)
        )
    ''')

    closeCall(conn)

def adicionar_contato(nome,perfil_linkedin):
    conn = openConnection()
    cursor = getCursor(conn)

    cursor.execute('INSERT INTO contatos (nome, perfil_linkedin) VALUES (?,?)',(nome,perfil_linkedin))
   
    closeCall(conn)

def listar_contatos():
    conn = openConnection()
    cursor = getCursor(conn)

    cursor.execute('SELECT * FROM contatos')
    contatos = cursor.fetchall()

    closeCall(conn)
    return contatos

def adicionar_conexao(contact_id1,contact_id2):
    conn = openConnection()
    cursor = getCursor(conn)

    cursor.execute('BEGIN')

    try:
        cursor.execute('SELECT * FROM conexoes WHERE (contact_id1 = ? AND contact_id2 = ?) OR (contact_id1 = ? AND contact_id2 = ?) ',(contact_id1,contact_id2,contact_id2,contact_id1))

        if cursor.fetchone() is None:
            cursor.execute('INSERT INTO conexoes (contact_id1,contact_id2) VALUES (?,?)',(contact_id1,contact_id2))
        else:
            print("Conexão já existe")

        conn.commit()
    except sqlite3.IntegrityError:
        conn.rollback()
        print("Erro de concorrência")
    
    conn.close()

def listar_conexoes(cont_id):
    conn = openConnection()
    cursor = getCursor(conn)

    cursor.execute('''
        SELECT contatos.nome
        FROM contatos
        JOIN conexoes ON contatos.id = CASE
            WHEN conexoes.contact_id1 = ? THEN conexoes.contact_id2
            ELSE conexoes.contact_id1
        END
        WHERE conexoes.contact_id1 = ? OR conexoes.contact_id2 = ?
    ''',(cont_id,cont_id,cont_id))

    conexoes = cursor.fetchall()
    closeCall(conn)
    return conexoes

def excluir_contato(cont_id):
    conn = openConnection()
    cursor = getCursor(conn)

    try:
        cursor.execute('''
            DELETE FROM conexoes WHERE contact_id1 = ? OR contact_id2 = ?
        ''',(cont_id,cont_id))
    except sqlite3.Error:
        print("Esse usuário não tem conexões :(")

    cursor.execute('''
        DELETE FROM contatos WHERE id = ?
    ''',(cont_id,))
    
    closeCall(conn)

def excluir_conexao(id1,id2):
    conn = openConnection()
    cursor = getCursor(conn)

    cursor.execute('''
        DELETE 
        FROM conexoes 
        WHERE (contact_id1 = ? AND contact_id2 = ?) OR (contact_id1 = ? AND contact_id2 = ?)
    ''',(id1,id2,id2,id1))

    closeCall(conn)

def menu():
    while True:
        print('''
            1- Adicionar contato\n
            2- Adicionar conexão\n
            3- Listar contatos\n
            4- Listar conexões\n
            5- Excluir contato\n
            6- Excluir conexão\n
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

            case "0":
                return
            
            case _:
                print("Opção inválida")

if __name__ == "__main__":
    criar_banco()
    menu()