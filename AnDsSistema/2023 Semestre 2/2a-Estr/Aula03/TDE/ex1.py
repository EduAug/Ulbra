lista = []
values = input("Insira os números para somar, separando por vírgula:\n").split(",")
# // ---------------------------

# Montar a listas apenas com números pares
for i in values:
    try:
        num = float(i)
        if num % 2 == 0:
            lista.append(num)
    except ValueError:
        print("Item inválido ("+i+")")
        pass

print("Itens válidos inseridos: ",lista)

def sum_even(list):
    totalSoma = 0
    for n in list:
        totalSoma += n
    return totalSoma

print("Total dos pares na lista: ",sum_even(lista))