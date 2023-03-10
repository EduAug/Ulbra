Print("Insira a primeira nota");
double n1 = Convert.ToDouble(Console.ReadLine());
Print("Insira a segunda nota");
double n2 = Convert.ToDouble(Console.ReadLine());
Print("Insira a terceira nota");
double n3 = Convert.ToDouble(Console.ReadLine());

if(n1>10){
    n1 = n1/10;
}
if(n2>10){
    n2 = n2/10;
}
if(n3>10){
    n3 = n3/10;
}

double med = ((n1+n2+n3)/3);

Print(""+med);









void Print(string msg){
    Console.WriteLine(msg);
}