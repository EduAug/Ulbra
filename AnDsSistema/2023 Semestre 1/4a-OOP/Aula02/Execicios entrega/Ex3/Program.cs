using Ex3;

Print("Insira o número, inteiro e positivo, delimitador:");
int i = Convert.ToInt32(Console.ReadLine());

isPair conferirPar = new isPair();

for(int j = 0; j <= i; j++){
    int k = conferirPar.ConferirPares(j);
    if(k != 0){
        Print(""+j);
    }
}


void Print(string msg){
    Console.WriteLine(msg);
}
