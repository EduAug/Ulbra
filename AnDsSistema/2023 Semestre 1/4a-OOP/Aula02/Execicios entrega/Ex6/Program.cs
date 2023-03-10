using Ex6;

int nroConta = 1234567890;
int loopCont = 1;
int OpCaixa;
decimal qtdDep;
decimal qtdSaq;

ContaBancaria Conta = new ContaBancaria(nroConta);

Print("Olá Cliente "+nroConta+"!\nQual operação gostaria de efetuar?");

while (loopCont != 0)
{
    Print("Nro. Conta: "+Conta.Numero);
    Print("1-Conferir Saldo\t2-Depositar Fundos\n3-Efetuar Saque\t\t4-Sair");
    OpCaixa = Convert.ToInt32(Console.ReadLine());
    switch (OpCaixa)
    {
        case 1:
            Print("\n\nSaldo Disponível: R$"+Conta.Saldo+"\n\n");
            break;
        case 2:
            PrintSL("\n\nInsira a quantia a ser depositada: R$ ");
            qtdDep = Convert.ToDecimal(Console.ReadLine());
            if (qtdDep>0){
                Conta.Depositar(qtdDep);
                Print("\n\nR$ "+qtdDep+" foram adicionados a sua conta\n\n");
                qtdDep=0m;
            }else{
                Print("\n\nVALOR INVÁLIDO!\n\n");
                qtdDep=0m;
            }
            break;
        case 3:
            PrintSL("\n\nInsira a quantia a ser retirada: R$ "); //sacada ficaria estranho
            qtdSaq = Convert.ToDecimal(Console.ReadLine());
            if (qtdSaq>0){
                if (qtdSaq>Conta.Saldo){
                    Print("\n\nSaldo Insuficiente, :'( \n\n");
                }else{
                    Conta.Sacar(qtdSaq);
                    Print("\n\nAguarde a contagem das cédulas...\n\n");
                    System.Threading.Thread.Sleep(3000);
                    Print("\n\nR$ "+qtdSaq+" foram retirados da sua conta\n\n");
                    qtdSaq=0m;
                }
            }else{
                Print("\n\nVALOR INVÁLIDO!\n\n");
                qtdSaq=0m;
            }
            break;
        case 4:
            loopCont = 0;
            break;
        default:
            break;
    }

}
/*
Conta.Depositar(1000.50m);
Conta.Sacar(100.62m);




Print("Conta Nro.: "+Conta.Numero);
Print("Saldo Disponível: R$"+Conta.Saldo);
*/
void Print(string msg){
    Console.WriteLine(msg);
}
void PrintSL(string msg){
    Console.Write(msg);
}