function verif(){
    var numInser = document.getElementById('numInser').value;
    numInser = numInser.split(',');
    var numMaio = 0;

    for(var i=0; i<numInser.length;i++){
        var valAt = parseFloat(numInser[i]);
        if(valAt > numMaio){
            numMaio = valAt;
        }
    }

    document.getElementById('maiNum').innerHTML = 'O maior número é: ' +numMaio;
}