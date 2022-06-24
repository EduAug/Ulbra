function verifIdade(){
    var idadeEnt = document.getElementById('idades').value;
    idadeEnt = idadeEnt.split(',');
    var idadeMenor = 0;
    var idadeMaior = 0;

    for(var i=0; i<idadeEnt.length;i++){
        var idadeAtual = parseFloat(idadeEnt[i]);
        if(idadeAtual < 18){
            idadeMenor++;
        } else {
            idadeMaior++;
        }
    }

    document.getElementById('idadeMaior').innerHTML =
    'Há ' +idadeMenor + ' menor(es) de idade ' 
    +' e há ' +idadeMaior +' maior(es) de idade';
}