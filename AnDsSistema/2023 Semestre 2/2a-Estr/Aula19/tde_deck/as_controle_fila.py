from as_obj_deck import Deck

baralho = Deck()

while True:
    print('''
1 - Adicionar nome (frente)
2 - Remover nome (frente)
3 - Primeiro nome
4 - Adicionar nome (fundo)
5 - Remover nome (fundo)
6 - Conferir quantos nomes estão na fila
7 - Listar nomes
8 - Último nome
9 - Remover nome
0 - Sair
        ''')
    
    opc = input("Selecione uma opção: ")

    match opc:
        case "1":
            nome = input("Insira o nome a ser adicionado:")
            baralho.adicionar_topo_deck(nome)
        case "2":
            baralho.remover_frente_deck()
        case "3":
            print("Primeiro item (na frente): ",baralho.check_frente())
        case "4":
            nome = input("Insira o nome a ser adicionado:")
            baralho.adicionar_fundo_deck(nome)
        case "5":
            baralho.remover_fundo_deck()
        case "6":
            print(f"Temos {baralho.tamanho()} nomes na fila")
        case "7":
            print("Fila atual:")
            print(baralho)
        case "8":
            print("Último item (no fundo): ",baralho.check_fundo())
        case "9":
            print(baralho)
            nome = input("Dentre os nomes listados, escolha um para remover da fila:")
            baralho.remover_de_qualquer_lugar(nome)
        case "0":
            break
        case _:
            print("Opção não suportada")