using Aula02;

Livro livroBD = new Livro(1234,"9j9j9j9j9j-299292-9jjjjj","Banco de Dados#14",240.00);

livroBD.Preco = 290;

Show(livroBD.Id +"-" +livroBD.ISBN +" R$" +livroBD.Preco);

Show("Digite algo:");
var retorno = Console.ReadLine();

Show("O usuário retornou " +retorno);

Show("Digite o primeiro número ");
var num1 = Convert.ToDouble(Console.ReadLine());
Show("Digite o segundo número ");
var num2 = Convert.ToDouble(Console.ReadLine());

Calculadora calc = new Calculadora();
var resultado = calc.Calcular(num1,num2,"+");

Show("A soma é "+resultado);



void Show(string msg){
    Console.WriteLine(msg);
}