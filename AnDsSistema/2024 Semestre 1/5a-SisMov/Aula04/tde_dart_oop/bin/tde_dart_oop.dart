class Pessoa{
  final Nome;
  final Idade;
  
  Pessoa(this.Nome, this.Idade);
  factory Pessoa.deJSON(Map<String,dynamic> jbase){
    return Pessoa(jbase["nome"],jbase["idade"]);
  }
}

class Conta{
  final String Saldo;
  final String NumeroConta;
  
  Conta(this.Saldo,this.NumeroConta);
  
  Map<String,dynamic> paraJSON(){
    return {"saldo":this.Saldo,"conta":this.NumeroConta};
  }
}

class Person{
  final String CPF;
  final String Nome;
  final int Idade;
  
  const Person({required this.CPF, required this.Nome, required this.Idade});
}

abstract class Persona{
  String caminhar();
  String falar();
}

class Estudante implements Persona{
  final Nome;
  Estudante(this.Nome);
  caminhar(){
    return "Sou $Nome, Estou andando";
  }
  
  falar(){
    return "ainda sou $Nome, e também falo.";
  }
}

void main() {
  Map<String,dynamic> fauxJSON = {"nome":"Jailson","idade":28};
  var tempPerson = Pessoa.deJSON(fauxJSON);
  print(tempPerson.Nome);
  
  Conta c1 = Conta("\$1230,49","1234 5678 9012");
  var fauxConta = c1.paraJSON();
  print(fauxConta["conta"]);
  
  Person p2 = Person(Nome: "Sadman", CPF: "01234567890", Idade: 20);
  print("${p2.Nome} | ${p2.Idade}");
  
  Estudante e1 = Estudante("Killean");
  print(e1.caminhar());
  print(e1.falar());
}
