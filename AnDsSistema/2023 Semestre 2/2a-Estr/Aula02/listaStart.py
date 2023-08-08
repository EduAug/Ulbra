xlist = []

print(""" MENU DE OPÇÕES: \n 
      1 - PARA INSERIR\n 
      2 - REMOVER O ÚLTIMO\n 
      3 - PARA REMOVER O PRIMEIRO\n 
      4 - INSERIR NO INÍCIO\n 
      5 - IMPRIMIR A LISTA\n 
      6 - IMPRIMIR ÚLTIMO\n 
      7 - REMOVER ÍMPARES\n
      8 - REMOVER PARES\n
      0 - PARA SAIR""")

while True:
    
    operator = int(input("Selecione uma opção: "))

    if operator == 0:
        break
    elif operator == 1:
        num = int(input("Digite o valor: "))
        xlist.append(num)
    elif operator == 2:
        xlist.pop()
    elif operator == 3:
        xlist.pop(0)
    elif operator == 4:
        num = int(input("Digite o valor: "))
        xlist.insert(0,num)
    elif operator == 5:
        print(xlist)
    elif operator == 6:
        print(xlist[-1])
    elif operator == 7:
        for i in xlist:
            if i%2 != 0:
                xlist.remove(i)
    elif operator == 8:
        for i in xlist:
            if i%2 == 0:
                xlist.remove(i)
    else:
        print("Digite uma opção válida!")




print(xlist)