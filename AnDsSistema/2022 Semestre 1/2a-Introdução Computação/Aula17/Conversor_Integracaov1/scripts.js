
function teste(){
    var numEnt = parseFloat(document.getElementById('numEntra').value);
    var basEnt = parseFloat(document.getElementById('basEntra').value);
    
    var basInt = parseInt(basEnt);
    var ordRever = [];
    var numArrInt = [];
    var numCalc = [];
    var numFina = 0;


    for(let i=numEnt.length-1;i>=0;i--){
        ordRever.push(numEnt[i]);
        numArrInt = ordRever.map(Number);
    }

    for(let i=0; i<=numEnt.length-1;i++){
        numCalc = numArrInt[i]*(Math.pow(basInt, i));
        numFina = parseInt(numFina)+parseInt(numCalc);
    }

    console.log(numFina);
    document.getElementById('valFina').innerHTML = numEnt +' na base ' +basEnt +' resulta em ' +numFina;
}