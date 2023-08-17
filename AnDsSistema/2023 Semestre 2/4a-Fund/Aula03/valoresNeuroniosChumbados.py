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
        
def neuroTresEnt():
    ent1 = -1
    ent2 = 1
    ent3 = 1
    pes1 = 0
    pes2 = -1
    pes3 = 2
    soma = (ent1*pes1)+(ent2*pes2)+(ent3*pes3)
    limRap = limiteRapido(soma)
    funRam = funcaoRampa(soma)
    funSig = funcaoSigmoide(soma)
    
    return limRap, funRam, funSig
    
print(neuroTresEnt())