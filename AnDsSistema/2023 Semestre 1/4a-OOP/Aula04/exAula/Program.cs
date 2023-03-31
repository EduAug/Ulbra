using Aula04;

Cidade city = new Cidade(11,"Torres");

/*Pessoa Ppl = new Pessoa(12,"Fred",city);

Ppl.AddEndereco(new Endereco(1,"Quinto da encruzilhada"));
*/
PessoaFisica pesFis = new PessoaFisica(0152,"Klev",city,"12345678901");

Console.WriteLine(pesFis.City.Nome);
//pesFis.Id = 100001;