lista = []
totalSoma = 0
entradaValores = input("Insira os números para somar, separando por espaço:\n").split(" ")

for i in entradaValores:
    try:
        num = float(i)
        lista.append(num)
    except ValueError:
        print("Item inválido ("+i+")")
        pass
print("Itens válidos inseridos: ",lista)

for n in lista:
    totalSoma += n
# OU
#totalSoma += sum(lista)

print(f"Total da lista:{totalSoma}")