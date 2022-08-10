function dec2Bin(num1,base1){
    var dividendo=num1;
    var base=base1;
    var sobra=0;
    var res="";
    var i=0;

    //Fazer uma nova função, que identifica se o primeiro número do string for 0
    //E caso seja, remover o Zero á Esquerda da string


    while(i==0){

        sobra=parseInt(dividendo)%base;

        if(base===16){
            
            sobra = baseHex(sobra);

        }
        
        res+=sobra.toString();

        dividendo=parseInt(dividendo/base);

        if(dividendo<base){
            res+=baseHex(dividendo);
            i++;
        }
    }
    
    var numfim = inv(res);
    console.log(numfim);
    var numfimSplit = numfim.split('');
    console.log(numfimSplit);
    var alola = 0;
    if(numfimSplit[0]==0){
      alola = numfimSplit.shift();
    }
    console.log(alola);

}

function baseHex(sobra){
  var num2Let = 0;
  switch (sobra) {
    case 10:
      num2Let="A";      
      break;

    case 11:
      num2Let="B";      
      break;

    case 12:
      num2Let="C";      
      break;

    case 13:
      num2Let="D";      
      break;

    case 14:
      num2Let="E";      
      break;

    case 15:
      num2Let="F";      
      break;      
  
    default:
      num2Let=sobra;
      break;

  }
    return num2Let;

}

function inv(res){
    var resul=res.split('');
    var stringRes="";

    for(let i= res.length-1;i>=0;i--){
        stringRes += resul[i];
    }

    return stringRes;

}