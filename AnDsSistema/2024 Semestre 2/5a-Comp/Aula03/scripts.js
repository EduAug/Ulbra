//Forma literal
const pessoa= {
    nome:"",
    email:"",
    apresentacao: function(){
        console.log(`Sou ${this.nome} meu contato e ${this.email}`);
    }
}
pessoa.nome= "Hilton";
pessoa.email= "hilt@hiltsoftware.com";
pessoa.apresentacao();

//Forma 
const pessoaObj = new Object();
pessoaObj.nome= "Fulano";
pessoaObj.velocidadeTerminal= 1024;
console.log(pessoaObj.velocidadeTerminal);

//Forma classe
class pessoaCl{
    constructor(nome, peso){
        this.nome= nome;
        this.peso= peso;
    }
}
let p1= new pessoaCl("josh", 80);
let p2= new pessoaCl("drake", 60);
console.log(p1);