listArray = []
listRejected = []
entry = input("Insira uma lista de números, separando cada número por ;\n").split(";")
# //-------------
def check_values(lista):
    for i in lista:
        try:
            add = float(i)
            listArray.append(add)
        except ValueError:
            listRejected.append(i)
            pass

def min_max_list(lista):
    return min(lista),max(lista)

check_values(entry)
print("Valores captados: ",listArray)
print("Valores inválidos: ",listRejected)

print("Valores mínimo e máximo da lista: ",min_max_list(listArray))