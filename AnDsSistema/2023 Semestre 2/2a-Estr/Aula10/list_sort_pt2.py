import random
import time as tm
list_glob_origin = []

def insert_num(liste,val):
    liste.append(val)

def gen_rand(qtt,limA,limB,listto):
    while len(listto) < qtt:
        newRando = random.randint(limA,limB)
        if newRando not in listto:
            insert_num(listto,newRando)

def selec_sort_desc(liste):
    for i in range(len(liste)):
        for j in range(len(liste)-1):
            if liste[i] > liste[j]: #Algum desses sinais inverte
                temp_hold = liste[j]
                liste[j] = liste[i]
                liste[i] = temp_hold
    print(liste)
# Sorting decrescente?

#Selection: Procura o menor e coloca na frente
def selec_sort(liste):
    for i in range(len(liste)):
        for j in range(i+1,len(liste)):
            if liste[i] > liste[j]:
                temp_hold = liste[j]
                liste[j] = liste[i]
                liste[i] = temp_hold
    return liste

#Bubble: Procura o maior e envia para o final
def bub_sort(liste):
    for i in range(len(liste)):
        for j in range(len(liste)-1,i,-1):
            if liste[j] < liste[j-1]:
                temp_hold = liste[j]
                liste[j] = liste[j-1]
                liste[j-1] = temp_hold
    return liste

#Insertion: Compara o atual e os anteriores, o menor vai a esquerda
def insertion_sort(listt):
    for i in range(1,len(listt)):
        key = listt[i]
        j = i-1
        while j >= 0 and key < listt[j]:
            listt[j+1] = listt[j]
            j-=1
        listt[j+1] = key
    return listt

#Merge: Divide a lista em meios, ordenando as frações, e então comparando a "lista" maior
def merge_sort(listn):
    if len(listn) > 1:
        half = len(listn) // 2 #Resto da divisão inteira
        left_half = listn[:half] #: Representa o "slicing" onde pega o resultado do 
        right_half = listn[half:] # half "a partir" dos dois-pontos

        merge_sort(left_half)
        merge_sort(right_half)

        i = j = k = 0

        while i < len(left_half) and j < len(right_half):
            if left_half[i] < right_half[j]:
                listn[k] = left_half[i]
                i+=1
            else:
                listn[k] = right_half[j]
                j+=1
            k+=1
        while i < len(left_half):
            listn[k] = left_half[i]
            i+=1
            k+=1

        while j < len(right_half):
            listn[k] = right_half[j]
            j+=1
            k+=1
    return listn


def cronometro(sortfunc,thelist):
    start = tm.time()
    print("t0 =",start)
    sortfunc(thelist)
    finish = tm.time()
    print("t1 =",finish)
    print("tF =",finish-start)
    return finish - start


while True:
    print("""
1 - Digitar número
2 - Criar aleatório
3 - Imprimir lista
4 - Ordenar lista (Selection sort)
5 - Ordenar lista (Bubble sort)
6 - Ordernar lista (Insertion sort)
7 - Ordenar lista (Merge sort)
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
            print(f"Forma final da lista: {selec_sort(list_glob_origin)}")
            print(f"Total processamento: {cronometro(selec_sort,list_glob_origin.copy()):.5f}")
        case 5:#Usando .copy() para manter a lista, para teste de desempenho
            print(f"Forma final da lista: {bub_sort(list_glob_origin)}")
            print(f"Total processamento: {cronometro(bub_sort,list_glob_origin.copy()):.5f}")

        #case 6:#De alguma forma, fiz um select-sort decrescente
        #    print(f"Total processamento: {cronometro(selec_sort_desc(list_glob_origin)):.5f}")

        case 6:
            print(f"Forma final da lista: {insertion_sort(list_glob_origin)}")
            print(f"Total processamento: {cronometro(insertion_sort,list_glob_origin.copy()):.5f}")
        case 7:
            print(f"Forma final da lista: {merge_sort(list_glob_origin)}")
            print(f"Total processamento: {cronometro(merge_sort,list_glob_origin.copy()):.5f}")
        case 9:
            list_glob_origin.clear()
        case 0:
            break
        case "_":
            print("Opção inválida")