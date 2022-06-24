//alert("Hello World");
//document.write("<h2>titulinho</hs>");
//console.log("Demo Log");

var n1="Nome"; //declaração string
//console.log(n1);*/

var num=10; // declaração num
//console.log(num);*/

var numFloat=10.99; // declaração num

console.log('Nome é uma ' +typeof(n1)); //saída tipo número
console.log(`Número é  ${num}`); // saída concatenação com string

console.log('Num é uma ' +typeof(num)); // saída tipo dado
console.log('numFloat é uma ' +typeof(numFloat)); // saída tipo dado (indifere float)

var expr = 2 + (4*2 + 20/4)  - 3; //expressão númerica
console.log('A expressão resulta em '+expr); //saída expressão

var depositoS = true; //boolean
if (depositoS){        // expressão if
    console.log('Foi feito depósito '/* + typeof(depositoS)*/); //Verdade
} else {
    console.log('Não foi feito depósito'); //Falso, sempre else
}

var ind;                //declaração indefinida
console.log(typeof(ind), "e " +typeof(ind)); //saída tipo indefinida

var nTst = 10;                  //declaração num
var sTst = "10";                //declaração string
if(nTst == sTst){           //num = string
    console.log('Iguais');
}
if (nTst === sTst){         //num != string (=== comparação de typeof)
    console.log('Iguais');
} else {
    console.log('Diferentes');
}

function exDado(){
    console.log(exDado);
}