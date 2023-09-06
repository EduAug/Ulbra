var vies = 1
var ent11 = 0, ent12 = 0, saida1 = 0
var ent21 = 0, ent22 = 1, saida2 = 0
var ent31 = 1, ent32 = 0, saida3 = 1
var ent41 = 1, ent42 = 1, saida4 = 1

var pes1 = 0, pes2 = -1, pesV = 1

var totSoma, totAdjust = 0
var toAdjust, z, loops = 0

function soma(vies, entrada, entrada1){
    return (entrada*pes1)+(entrada1*pes2)+(vies*pesV)
}

function funcaoTransferenciaSimp(summ){
    if(summ <= 0){
        return 0
    }
    return 1
}

function funcaoCorrecao(entrada, entrada2, vies, saidaEsp, saidaObt){
    pes1 = pes1 + 1 * (saidaEsp-saidaObt)*entrada
    pes2 = pes2 + 1 * (saidaEsp-saidaObt)*entrada2
    pesV = pesV + 1 * (saidaEsp-saidaObt)*vies
}

do {
    toAdjust = 0

    totSoma = soma(vies,ent11,ent12)
    z = funcaoTransferenciaSimp(totSoma)
    if(z!=saida1){
        toAdjust++
        totAdjust++
        funcaoCorrecao(ent11,ent12,vies,saida1,z)
    }

    totSoma = soma(vies,ent21,ent22)
    z = funcaoTransferenciaSimp(totSoma)
    if(z!=saida2){
        toAdjust++
        totAdjust++
        funcaoCorrecao(ent21,ent22,vies,saida2,z)
    }

    totSoma = soma(vies,ent31,ent32)
    z = funcaoTransferenciaSimp(totSoma)
    if(z!=saida3){
        toAdjust++
        totAdjust++
        funcaoCorrecao(ent31,ent32,vies,saida3,z)
    }

    totSoma = soma(vies,ent41,ent42)
    z = funcaoTransferenciaSimp(totSoma)
    if(z!=saida4){
        toAdjust++
        totAdjust++
        funcaoCorrecao(ent41,ent42,vies,saida4,z)
    }
    loops++
}while(toAdjust!== 0)

console.log("Valores finais dos pesos: \n")
console.log("Peso 1 ("+pes1+")\tPeso 2 ("+pes2+")\tPeso 3 ("+pesV+")")
console.log("\nForam necessário(s) "+totAdjust+" ajuste(s)")
console.log("\nEm "+loops+" execução(ões)/ciclo(s)")