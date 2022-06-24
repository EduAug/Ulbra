var numEnt = prompt('Insira um número');
var basEnt = prompt('Insira a base');

var basInt = parseInt(basEnt); // base p int
var ordRever = []; //reverter ordem num
var numArrInt = [];//reverso p int
var numCalc = []; // ""formula""
var numFina = 0; // soma final



for(let i=numEnt.length-1;i>=0;i--){
  ordRever.push(numEnt[i]);
  numArrInt = ordRever.map(Number);
}


for(let i=0;i<=numEnt.length-1;i++){
  numCalc = numArrInt[i]*(Math.pow(basInt, i));    
  numFina = parseInt(numFina) + parseInt(numCalc);
}
console.log(numFina);






// ToDo p/ "versão final"
// - Tentar reduzir os for
// - Procurar variáveis desnecessárias
// - Integrar com HTML
// - Fazer um "filtro" ('for' no 'array' e caso
// algum número não seja suportado pela base
// finalizar/repetir o programa)