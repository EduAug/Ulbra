#Algoritmo para gerenciamento de fila, com as funções
fila = []
filaPrioritario = []
history = []
contadorPrio = 3
loopMenu = True
#Enqueue, Dequeue, see first, see queue, exit
def menu():
    print(
        """
    1- Enfileirar
    2- Desenfileirar
    3- Exibir Primeiro
    4- Exibir Fila
    5- Enfileirar (Prioritário)
    6- Desenfileirar (Prioritário)
    7- Exibir Primeiro (Prioritário)
    8- Exibir Fila (Priotário)
    9- Chamar Próximo
    10- Exibir Histórico
    0- Sair
        """
    )

def enqueue(sequencia,lista):
    for val in sequencia:
        lista.append(val)

def dequeue(lista):
    if not lista:
        print("A lista está vazia")
    else:
        history.insert(0,lista[0])
        lista.pop(0)

def showFirst(lista):
    if not lista:
        print("A lista está vazia")
    else:
        print(f"Primeiro elemento: {lista[0]}")

def showQueue(lista):
    if not lista:
        print("A lista está vazia")
    else:
        print(lista)

def callNext():
    global contadorPrio
    if contadorPrio > 0 and filaPrioritario:
            nextOne = filaPrioritario[0]
            filaPrioritario.pop(0)
            contadorPrio-=1
    elif fila:
            nextOne = fila[0]
            fila.pop(0)
            contadorPrio = 3
    else:
        return "Ambas as filas já estão vazias!"

    return "Chamando agora: "+nextOne

while loopMenu:
    menu()
    opc = int(input("Escolha uma opção: "))
    if opc == 1:
        entry = input("Insira os valores para enfileirar, separando por vírgula: ").split(',')
        enqueue(entry,fila)
    elif opc == 2:
        dequeue(fila)
    elif opc == 3:
        showFirst(fila)
    elif opc == 4:
        showQueue(fila)
        
    elif opc == 5:
        entry = input("Insira os valores para enfileirar, separando por vírgula: ").split(',')
        enqueue(entry,filaPrioritario)
    elif opc == 6:
        dequeue(filaPrioritario)
    elif opc == 7:
        showFirst(filaPrioritario)
    elif opc == 8:
        showQueue(filaPrioritario)
    elif opc == 9:  # 3 Prioritários, 1 Comum ...
        print(callNext())

    elif opc == 10:
        showQueue(history)
    elif opc == 0:
        loopMenu = False
    else:
        print("Opção não suportada")