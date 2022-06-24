var numEnt = prompt('Insira um número');
var basEnt = prompt('Insira a base');

var basInt = parseInt(basEnt);
var numSplit = numEnt.split('');
var ordRever = [];
var numArrInt = [];
var numCalc = [];
var numFina = 0;

var numLargRev = numEnt.length-1;


for(let i=numLargRev;i>=0;i--){
  ordRever.push(numEnt[i]);
  numArrInt = ordRever.map(Number);
}
console.log(numEnt);
console.log(basInt);
console.log(numArrInt);


                                //daqui p baixo algo não funciona
for(let i=0;i<numLargRev;i++){
  numCalc = (numArrInt[i]*(Math.pow(i++, basInt)));    // <-- é aqui
  numFina = parseInt(numFina) + parseInt(numCalc);
}
console.log(numFina);



