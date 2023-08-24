saida = 0
pes1 = -1
pes2 = -1
i = 0
entradas = [[1,1],[1,0],[0,1],[0,0]]
saidasEsperadas = [1,1,0,0]
conclusaoTreino = False
ajustable = 0

def ajuste(_x1, _x2, _yd, _yo):
    global pes1,pes2
    pes1 = pes1 + 1 * (_yd-_yo)*_x1
    pes2 = pes2 + 1 * (_yd-_yo)*_x2
    return pes1 , pes2

def funcao_rampa_simp(soma):
    if(soma<=0):
        return 0
    else:
        return 1

def _summ(ent,ent2,pes,pes2):
    return (ent*pes)+(ent2*pes2)


while not conclusaoTreino:
    for i in range(4):
        conclusaoTreino = True
        grupoAtual = entradas[i]
        entAtual1 = grupoAtual[0]
        entAtual2 = grupoAtual[1]
        soma = _summ(entAtual1,entAtual2,pes1,pes2)
        saida = funcao_rampa_simp(soma)
        if saida != saidasEsperadas[i]:
            pes1 , pes2 = ajuste(entAtual1,entAtual2,saidasEsperadas[i],saida)
            ajustable += 1
            conclusaoTreino = False
        if i == 4:
            i = 0
        i+=1
print("Peso 1 Final:",pes1,"| Peso 2 Final:",pes2)
print("\n\nAjustes:",ajustable,"\n\n")