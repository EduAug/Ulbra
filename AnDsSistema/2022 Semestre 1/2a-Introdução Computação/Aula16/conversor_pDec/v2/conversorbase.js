var numEnt = prompt('Insira um número');
var basEnt = prompt('Insira a base')
var basInt = parseInt(basEnt);
var numSplit = numEnt.split('');
var ordRever = [];
var numArrInt = [];
var numCalc = [];

var numLargRev = numEnt.length-1;


for(var i=numLargRev;i>=0;i--){
  ordRever.push(numEnt[i]);
  numArrInt = ordRever.map(Number);
}
console.log(numEnt);
console.log(basInt);
console.log(numArrInt);

for(var i=0;i<=numLargRev;i++){
  var testesoma = numArrInt[i]+basInt;
  console.log(testesoma);
}

//daqui p baixo algo não funciona
for(var i=0;i<numLargRev;i++){
  numCalc = (numArrInt*(Math.pow(i, basInt)));
  var numFina = numCalc + numCalc;
}
console.log(numFina);



