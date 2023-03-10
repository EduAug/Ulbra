using Ex4;

Print("Insira o primeiro número:");
double numero1 = Convert.ToDouble(Console.ReadLine());

Print("Insira o segundo número");
double numero2 = Convert.ToDouble(Console.ReadLine());

// ------------------------------------------------- 

Print("Escolha uma operação: 1- Somar | 2- Subtrair");
int operacao = Convert.ToInt32(Console.ReadLine());

// --------------------------------------------------
Calculadora myCalc = new Calculadora();
// --------------------------------------------------
switch(operacao){
    case 1:
        var totalSom=myCalc.Somar(numero1,numero2);
        Print("A soma é "+totalSom);
        break;
    case 2:
        var totalSub=myCalc.Subtrair(numero1,numero2);
        Print("A subtração resulta em "+totalSub);
        break;
    default:
        Print("Operação inválida, encerrando...");
        break;
}

void Print(string msg){
    Console.WriteLine(msg);
}
