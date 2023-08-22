lista = []
listaDescarte = []
def validate_values(val):
    for i in val:
        try:
            num_add = int(i)
            lista.append(num_add)
        except ValueError:
            print(f"{i} inválido!")
def remove_last(list):
    listaDescarte.append(list[-1])
    list.pop()
def clear_list(list):
    list.clear()
while True:
    print("MENU:\n0- Sair \n1- Adiciona valor \n2- Remove último\n3- Limpa pilha\n4- Exibir pilha\n5- Exibir último item da pilha")
    opc = int(input("Escolha alternativa: "))
    if opc == 1:
        entry = input("Informe os valores, separando por vírgula")
        entry_split = entry.split(',')
        validate_values(entry_split)
    elif opc == 2:
        remove_last(lista)
    elif opc == 3:
        clear_list(lista)
    elif opc == 4:
        print("Pilha principal:",lista)
        print("Pilha de descarte:",listaDescarte)
    elif opc == 5:
        print(lista[-1])
    elif opc == 0:
        break
    else:
        print("Opção não reconhecida.")