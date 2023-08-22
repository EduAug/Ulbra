listNumbers = []
optMenu = ""
firstLoop = 0

while True:
    if firstLoop == 1:
        print(f"Lista: {listNumbers}")
        
    optMenu = input("\nOpções:\n 1 - Adicionar números a lista\n 2 - Remover último \n 3 - Limpar lista \n 0 - Sair\n")
    firstLoop = 1

    match optMenu:
        case '1':
            entry = input("Insira um número, ou uma sequência, separando por vírgula: ").split(',')

            for i in entry:
                try:
                    num = int(i)
                    listNumbers.append(num)
                except ValueError:
                    pass
        case '2':
            try:
                del listNumbers[-1]
            except IndexError:
                print("A lista está vazia.\n")
        case '3':
            listNumbers = []
        case '0':
            break
        case _:
            print("Opção não suportada")