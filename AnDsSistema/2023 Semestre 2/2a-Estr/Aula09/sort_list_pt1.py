import random
import time as tm
list_glob_origin = []

def insert_num(liste,val):
    liste.append(val)

def gen_rand(qtt,limA,limB,listto):
    for i in range(qtt):
        newRando = random.randint(limA,limB)
        insert_num(listto,newRando)

def selec_sort_desc(liste):
    start = tm.time()
    for i in range(len(liste)):
        for j in range(len(liste)-1):
            if liste[i] > liste[j]: #Algum desses sinais inverte
                temp_hold = liste[j]
                liste[j] = liste[i]
                liste[i] = temp_hold
    end = tm.time()
    print(liste)
    return end - start
# Sorting decrescente?

#Selection: Procura o menor e coloca na frente
def selec_sort(liste):
    start = tm.time()
    for i in range(len(liste)):
        for j in range(i+1,len(liste)):
            if liste[i] > liste[j]:
                temp_hold = liste[j]
                liste[j] = liste[i]
                liste[i] = temp_hold
    end = tm.time()
    return end - start

#Bubble: Procura o maior e envia para o final
def bub_sort(liste):
    start = tm.time()
    for i in range(len(liste)):
        for j in range(len(liste)-1,i,-1):
            if liste[j] < liste[j-1]:
                temp_hold = liste[j]
                liste[j] = liste[j-1]
                liste[j-1] = temp_hold
    end = tm.time()
    return end - start

while True:
    print("""
1 - Digitar número
2 - Criar aleatório
3 - Imprimir lista
4 - Ordenar lista (Selection sort)
5 - Ordenar lista (Bubble sort)
9 - Limpar lista
0 - Sair
""")
    opc = int(input("Escolha um item: "))
    match opc:
        case 1:
            try:
                num = int(input("Digite o número para adicionar a lista:"))
                insert_num(list_glob_origin,num)
            except ValueError:
                print("Valor inválido\n")
        case 2:
            try:
                total_ran = int(input("Quantos números deseja gerar? "))
                lower_lim = int(input("A partir de qual valor? "))
                higher_lim = int(input("Até qual valor? "))
                gen_rand(total_ran,lower_lim,higher_lim,list_glob_origin)
            except ValueError:
                print("Valor inválido")
        case 3:
            print(list_glob_origin)
        case 4:
            print(f"Total processamento: {selec_sort(list_glob_origin.copy()):.5f}")
        case 5:#Usando .copy() para manter a lista, para teste de desempenho
            print(f"Total processamento: {bub_sort(list_glob_origin.copy()):.5f}")


        case 6:#De alguma forma, fiz um select-sort decrescente
            print(f"Total processamento: {selec_sort_desc(list_glob_origin.copy()):.5f}")
        case 9:
            list_glob_origin.clear()
        case 0:
            break
        case _:
            print("Opção inválida")