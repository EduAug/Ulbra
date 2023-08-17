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
        
def neuroEnt(ent1,ent2,pes1,pes2):
    # ent1 = -1
    # ent2 = 1
    # ent3 = 1
    # pes1 = 0
    # pes2 = -1
    # pes3 = 2
    soma = (ent1*pes1)+(ent2*pes2)
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
values = input("Insira os valores de entrada do neurônio, separando por vírgula:\n").split(',')
peso = input("Agora insira os pesos das entradas anteriores, em ordem, também separado por vírgula:\n").split(',')

for i in values:
    try:
        num = float(i)
        valuesArray.append(num)
    except ValueError:
        pass
for i in peso:
    try:
        num = float(i)
        pesoArray.append(num)
    except ValueError:
        pass

print(neuroEnt(valuesArray[0],valuesArray[1],pesoArray[0],pesoArray[1]))