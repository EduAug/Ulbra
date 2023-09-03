import os
import time

pilha = []
deletados = []

def menu():
    print(
""" 
 ######    ####    ####     ##   ##    ##      #####
  ##  ##    ##      ##      ##   ##   ####    ##   ##
  ##  ##    ##      ##      ##   ##  ##  ##   #
  #####     ##      ##      #######  ##  ##    #####
  ##        ##      ##   #  ##   ##  ######        ##
  ##        ##      ##  ##  ##   ##  ##  ##   ##   ##
 ####      ####    #######  ##   ##  ##  ##    #####
 """)

    print("""MENU:
1- EMPILHAR
2- DESEMPILHAR
3- LIMPAR
4- EXIBIR TOPO
5- EXIBIR PILHA
6- EXIBIR ÚLTIMO DELETADO
7- EXIBIR DELETADOS
8- REEMPILHAR DELETADO         
9- DESEMPILHAR VÁRIOS 
0- SAIR""")

def push(uma_pilha,valor):
    uma_pilha.append(valor)
    for name, var in globals().items():
        if var == uma_pilha:
            print(f"Valor {valor} adicionado à pilha ``{name}``.")

def pop(uma_pilha):
    if not uma_pilha:
        print("A pilha está vazia.")
    else:
        print(f"Valor {uma_pilha[-1]} removido da pilha {uma_pilha}.")
        uma_pilha.pop()

def print_pilha(uma_pilha):
    if not uma_pilha:
        print("A pilha está vazia.")
    else:
        print("Conteúdo da pilha:")
        for valor in reversed(uma_pilha):
            print(valor)

def peek(uma_pilha):
    if not uma_pilha:
        print("A pilha está vazia.")
    else:
        print(f"O elemento no topo da pilha é :{uma_pilha[-1]}")
    
def limpa_tela():
    time.sleep(1.5)
    sistema = os.name
    if sistema == "nt":
        os.system("cls")
    else:
        os.system("clear")

def desempilhar_varios(pilha,deletados,valor):
    for i in range(valor):
        if not pilha:
            print("A pilha está vazia")
            break
        current_value = pilha[-1]
        push(deletados,current_value)
        pop(pilha)
if __name__ == "__main__":

    while True:
        limpa_tela()
        menu()   
        try:
            opc = int(input("Digite uma opção: "))
        except ValueError:
            print("Opção inválida. Digite um número válido.")
            continue

        if opc == 1:
            entrada = input("Digite os valores para empilhar (separados por vírgula): ")
            valores_separados = entrada.split(",")
        
            for valor_str in valores_separados:
                try:
                    valor = int(valor_str)
                    push(pilha, valor)
                except ValueError:
                    print(f"Valor inválido: {valor_str}")

        elif opc == 2:
            valor = pilha[-1]
            push(deletados,valor)
            pop(pilha)
        elif opc == 3:
            pilha.clear()
            print("A pilha está vazia.")
        elif opc == 4:
            peek(pilha)
        elif opc == 5:
            print_pilha(pilha)
        elif opc == 6:
            peek(deletados)
        elif opc == 7:
            print_pilha(deletados)
        elif opc == 8:
            valor = deletados[-1]
            push(pilha, valor)
            pop(deletados)
        elif opc == 9:
            if not pilha:
                print("A pilha está vazia")
            else:
                qtd_desemp = int(input("Quantos valores gostaria de desempilhar?"))
                if qtd_desemp > len(pilha):
                    qtd_desemp = len(pilha) + 1
                desempilhar_varios(pilha,deletados,qtd_desemp)
        elif opc == 0:
            break
        else:
            print("Escolha uma opção do MENU!")