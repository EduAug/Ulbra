using Execicios_entrega;

Print("Insira um número");
int i = Convert.ToInt32(Console.ReadLine());

ParImpar EvenOrOdd = new ParImpar();
string Resultado1 = EvenOrOdd.ParOuImpar(i);
Print("O número " +i +" é " +Resultado1);




void Print(string msg){
    Console.WriteLine(msg);
}
