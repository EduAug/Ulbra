def limiteRapido(soma):
    if (soma<=0):
        return -1
    else:
        return 1
        
def funcaoRampa(soma):
    if (soma<0):
        return 0
    elif (soma>=0 and soma<=1):
        return soma
    else:
        return 1

def funcaoSigmoide(soma):
    if (soma>=0):
        return 1-1/(1+soma)
    elif (soma<0):
        return -1+1/(1-soma)
        
def baseNValues(entrada,peso):
    return entrada*peso

def neuroEnt(soma):

    opc = int(input("Escolha uma função para a saída:\n0-Limite Rápido\t1-Rampa\t2-Sigmoide\n"))
    match opc:
        case 0:
            limRap = limiteRapido(soma)
            return limRap
        case 1:
            funRam = funcaoRampa(soma)
            return funRam
        case 2:
            funSig = funcaoSigmoide(soma)
            return funSig
        case _:
            print("Função não encontrada, retornando soma...")
            return soma
    
valuesArray = []
pesoArray = []
somaBases = []

values = input("Insira os valores de entrada do neurônio, separando por vírgula:\n").split(',')
peso = input("Agora insira os pesos das entradas anteriores, em ordem, também separado por vírgula:\n").split(',')

for i in values:
    try:
        num = int(i)
        valuesArray.append(num)
#        print(valuesArray,type(num))
    except ValueError:
        pass
for i in peso:
    try:
        num = int(i)
        pesoArray.append(num)
#        print(pesoArray,type(num))
    except ValueError:
        pass

# Após montar os arrays com a quantia N de entradas e pesos,
# Chamar a função para multiplicar a entrada pelo peso, e armazenar em um array
# As somas individuais
for i in range(len(pesoArray)):
    thisPair = baseNValues(valuesArray[i],pesoArray[i])
    print("entrada:",valuesArray[i]," | peso:",pesoArray[i])
    somaBases.append(thisPair)
# Então, somar todas as somas (soou estranho, mas a ideia é essa)
totalSoma = 0
for i in somaBases:
    totalSoma = totalSoma + i
# E por fim, aplicar essa soma de todos os valores nas funções de entrada
print("Soma:",totalSoma)
print("O total dos valores e pesos entrados resultam em: ",neuroEnt(totalSoma))