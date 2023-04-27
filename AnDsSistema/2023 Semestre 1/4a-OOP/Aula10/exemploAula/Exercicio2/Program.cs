using Exercicio2;

IPessoa prof1 = new Professor("Satoru",28);
// em caso de setter público, tirar o construtor e 
// var/IPessoa prof1 = new Professor {Nome = "Nanami", Idade = 28}
IPessoa alun1 = new Aluno("Megumi",15);

Escola jujutsu = new Escola();

Console.WriteLine(jujutsu.ApresentarPessoa(prof1));
Console.WriteLine(jujutsu.ApresentarPessoa(alun1));