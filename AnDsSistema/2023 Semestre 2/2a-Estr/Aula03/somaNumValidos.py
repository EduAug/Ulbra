lista = []
totalSoma = 0
entradaValores = input("Insira os números para somar, separando por espaço:\n").split(" ")
# // ---------------------------
def tratarDados(entered):
    for i in entered:
        try:
            num = float(i)
            lista.append(num)
        except ValueError:
            print("Item inválido ("+i+")")
            pass
    return lista

def somarValidos(seq):
    global totalSoma
    for n in seq:
        totalSoma += n
    return totalSoma

print("Itens válidos inseridos: ",tratarDados(entradaValores))

print("Total da lista: ",somarValidos(lista))