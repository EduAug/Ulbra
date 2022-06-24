/*function binToDec(num1){
  var arrNume = num1.split('');
  var resAlgaForm = 0;
  var resFina = 0;

  for(i = 0; i <= num1.length;i++){
    resAlgaForm = arrNume[i]*(2**[i]);
    console.log(resAlgaForm);
    resFina = resAlgaForm + resFina;
  }
  
  console.log(resFina);

}*/
/*
function binToDecII(num1){
  var arrNume = num1.split('');
  var resAlgaForm = 0;
  var resFina = 0;
  var arrPosi = 0;

  for(i=arrNume.length-1; i>=0;i--){
      resAlgaForm = (arrNume[i] * (2 ** arrPosi));
      resFina = resFina + resAlgaForm;
      arrPosi++;
  }
  return resFina;
}*/

function binToDecIII(num1, bas1){
  var arrNume = num1.split('');
  var resAlgaForm = 0;
  var resFina = 0;
  var arrPosi = 0;
  var numTrue = 0;
  arrPosi = arrNume.length-1;

  for(i=0; i<arrNume.length;i++){
    if(isNaN(arrNume[i])){
      numTrue = hexToDec(arrNume[i]);
    } else {
      numTrue = arrNume[i];
    }
      resAlgaForm = (numTrue * (bas1 ** arrPosi));
      resFina = resFina + resAlgaForm;
      arrPosi--;
  }
  console.log(resFina);
}

function hexToDec(letra1){
  var let2Num = 0;
  switch (letra1) {
    case "A":
    case "a":
      let2Num=10;      
      break;

    case "B":
    case "b":
      let2Num=11;      
      break;

    case "C":
    case "c":
      let2Num=12;      
      break;

    case "D":
    case "d":
      let2Num=13;      
      break;

    case "E":
    case "e":
      let2Num=14;      
      break;

    case "F":
    case "f":
      let2Num=15;      
      break;      
  
    default:
      let2Num=0;
      break;
  }
}

// var valor = "a";
// if(isNaN(valor))
//     console.log("valor não é um número ");
// else
//     console.log("é um número");

// o usuário me informa um número e uma base... 
// transformar o número num array... divivdindo para digito para uma posição 
//1AB
function convertToDecimal(numero, base){
  var posicao = 0;
  var resultFormulaNoAlgarismo = 0;
  var resultFinal = 0;
  var numeroReal = 0;
  var arrNumero = numero.split('');
  posicao = arrNumero.length-1;

  for(i=0; i<arrNumero.length;i++){
      if(isNaN(arrNumero[i]))
          numeroReal = hexadecimalToDecimal(arrNumero[i]);
      else
          numeroReal = arrNumero[i];
      resultFormulaNoAlgarismo = (numeroReal * (base ** posicao));
      resultFinal = resultFinal + resultFormulaNoAlgarismo;
      posicao--;
  }
  return resultFinal;
}