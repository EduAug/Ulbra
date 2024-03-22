//Vamos em partes, primeiro será uma função que, ao final, vai
//retornar um "texto" com o valor da Operação

String calculator( {      //Ela recebe
  required double num1,   //Um número
  required double num2,   //Outro número

  required double operador(double num1,double num2) //E uma função

  }) {                    //Essa função é como em uma interface
                          //Ela somente pede os parâmetros e retorno

    return "O retorno é ${operador(num1,num2)}";
                          //E então, no retorno, ou corpo
                          //da primeira função, ela é chamada
                          //com os respectivos argumentos
}


//double soma(double parA, double parB){return parA + parB;}

void main(){
  print(
    calculator( num1: 1, //Um número
                num2: 2, //Outro número
                operador: (parA, parB)=> parA+parB)); //Uma função
                //Aqui ela é chamada como uma arrow function
                //então já é "executada" aqui mesmo, sem depender de
                //outra função "externa", como calculator
  print(                      
    calculator( num1: 7, 
                num2: 1, 
                operador: (parA, parB)=> parA-parB));
                //Se dentro da primeira função, era semelhante
                //a uma interface, onde só diziamos o que deveria
                //possuir (parâmetros, retorno), aqui seria
                //apenas a implementação, sem se preocupar 
                //"com o que", apenas "como"
  print(
    calculator( num1: 15, 
                num2: 2, 
                operador: (parA, parB)=> parA*parB));
  print(
    calculator( num1: 21, 
                num2: 0, 
                operador: (parA, parB)=> parA/parB));
}