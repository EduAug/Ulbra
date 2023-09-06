vies = 1
entradas = [[0,0],[0,1],[1,0],[1,1]]
saidas_esperadas = [0,0,1,1]

pesos = [-1,0,1]

soma=ajustes=saida_obt=loops=i = 0
doneTraining = False

def somm(vies,entradas, pesos):
    return (entradas[0]*pesos[0])+(entradas[1]+pesos[1])+(vies*pesos[2])

def func_trans_simp(somaNeu):
    if(somaNeu <= 0 ):
        return 0
    return 1

def func_delta_correcao(entradas,vies,saidaE,saidaO):
    global pesos
    pesos[0] = pesos[0]+1*(saidaE-saidaO)*entradas[0]
    pesos[1] = pesos[1]+1*(saidaE-saidaO)*entradas[1]
    pesos[2] = pesos[2]+1*(saidaE-saidaO)*vies
    return pesos

while not doneTraining:
    for i in range(4):
        doneTraining = True
        entradasAtuais, saidaAtual = entradas[i],saidas_esperadas[i]
        soma = somm(vies,entradasAtuais,pesos)
        saida_obt = func_trans_simp(soma)
        if(saida_obt!=saidaAtual):
            ajustes += 1
            doneTraining = False
            pesos = func_delta_correcao(entradasAtuais,vies,saidaAtual,saida_obt)
        if i == 4:
            i = 0
        loops += 1
        i += 1
print("Valores dos pesos:")
print("Peso 1: (",pesos[0],")\tPeso 2: (",pesos[1],")\tPeso 3: (",pesos[2],")")

print("Foram realizados",ajustes,"ajustes\nEm",loops,"iterações")