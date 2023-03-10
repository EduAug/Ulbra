using Ex5;

string nom = "Josh";
int age = 15;
Pessoa present = new Pessoa(nom,age);
object[] dados = present.Apresentar(nom,age);

Print(
        "Nome: "
        +String.Join
        (", Idade: ", present.Apresentar(present.Nome,present.Age))
    );




void Print(string msg){
    Console.WriteLine(msg);
}