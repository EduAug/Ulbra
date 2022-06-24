var numEnt = prompt('Insira um número');
var basEnt = prompt('Insira a base')
var basInt = parseInt((basEnt), 10);
var numSplit = numEnt.split('');
var ordRever = [];
var numArrInt = [];

var numLargRev = numEnt.length-1;


for(var i=numLargRev;i>=0;i--){
  ordRever.push(numEnt[i]);
  numArrInt = ordRever.map(Number);
}
console.log(numArrInt);



