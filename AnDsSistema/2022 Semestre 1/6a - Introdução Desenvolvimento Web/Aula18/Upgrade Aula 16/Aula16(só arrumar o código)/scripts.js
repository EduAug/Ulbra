var com10 = prompt('Insira um valor');

if(com10>10){
    alert('O número ' +com10 +' é maior que 10');
} else if(com10==10){
    alert('O número é igual a 10');
} else if(com10<10){
    alert('O número ' +com10 +' é menor que 10');
}                   // Ok (1/5)




var n1 = prompt('Insira o primeiro número');
var n2 = prompt('Insira o segundo número');

var res2 = parseFloat(n1) + parseFloat(n2);

alert(n1 +' + ' +n2 +' = ' +res2);
                    // Ok (2/5)



var n1_case = prompt('Insira um número');
var n2_case = prompt('Insira outro número');
var casEscolha = prompt('Selecione uma operação: Soma(1) Subtração(2) Multiplicação(3) Divisão(4)');
switch (casEscolha){
    case '1':

        var res3 = parseFloat(n1_case) + parseFloat(n2_case);
        alert(n1_case +' + ' +n2_case +' = ' +res3);

        break;

    case '2':

        var res3 = parseFloat(n1_case) - parseFloat(n2_case);
        alert(n1_case +' - ' +n2_case +' = ' +res3);

        break;

    case '3':

        var res3 = parseFloat(n1_case) * parseFloat(n2_case);
        alert(n1_case +' * ' +n2_case +' = ' +res3);

        break;

    case '4':

        var res3 = parseFloat(n1_case) / parseFloat(n2_case);
        alert(n1_case +' / ' +n2_case +' = ' +res3);

        break;

    default:
        break;
}                      // Ok (3/5)

var nome = prompt('Insira um nome');
var rep = prompt('Insira uma quantidade de vezes');

for(var i=0;i<rep;i++){
    alert(nome);
}                      // Ok (4/5)


const dados = ['nome ', 'endereco ', 'email'];
dados[0] = prompt('Insira seu nome:');
dados[1] = prompt('Insira seu endereço:');
dados[2] = prompt('Insira seu E-mail:');

for(var i=0;i<3;i++){
    alert(dados[i]);
}                      // Ok (5/5)