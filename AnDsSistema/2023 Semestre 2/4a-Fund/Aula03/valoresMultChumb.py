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
        
def neuroEnt():
    ent1 = 0
    pes1 = 1
    pes2 = -2

    soma = (ent1*pes1)
    limRap1 = limiteRapido(soma)
    funRam1 = funcaoRampa(soma)
    funSig1 = funcaoSigmoide(soma)

    LR2 = limiteRapido(limRap1*pes2)
    FR2 = funcaoRampa(funRam1*pes2)
    FS2 = funcaoSigmoide(funSig1*pes2)

    return LR2, FR2, FS2

print(neuroEnt())