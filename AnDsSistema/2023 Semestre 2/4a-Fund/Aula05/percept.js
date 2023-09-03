const arr = [0,0]
const pesos = [-1,1,1]
const esperado = 0
let treinoConcluido = 0


function soma(entrada, pesos)
{
    return (entrada[0]*pesos[0])+(entrada[1]*pesos[1])+(1*pesos[2])
}

function Rampa(valor){
    if(valor<=0){
        return 0
    }
    return 1
}

function Correcao(entradas,saidaEsp,saidaObt,pesos){
    const constanteAprendizado = 1

    pesos[0] = pesos[0]+constanteAprendizado*(saidaEsp-saidaObt)*entradas[0]
    pesos[1] = pesos[1]+constanteAprendizado*(saidaEsp-saidaObt)*entradas[1]
    pesos[2] = pesos[2]+constanteAprendizado*(saidaEsp-saidaObt)*1

    return pesos
}

do{
    treinoConcluido = 0
    var i = 0
    const v = soma(arr,pesos)
    const saida = Rampa(v)
    console.log("saida: ",saida)

    if(saida !== esperado){
        Correcao(arr,esperado,saida,pesos)
        console.log(pesos)
        treinoConcluido++
        console.log("treinoConcluido: ",treinoConcluido)
    }

    const v2 = soma(arr,pesos)
    const saida2 = Rampa(v2)
    console.log("saida 2: ",saida2)

    if(saida2 !== esperado){
        Correcao(arr,esperado,saida2,pesos)
        console.log(pesos)
        treinoConcluido++
        console.log("treinoConcluido: ",treinoConcluido)
    }

    i++
    if(i<pesos.length){
        i = 0
    }
}while(treinoConcluido!==0)