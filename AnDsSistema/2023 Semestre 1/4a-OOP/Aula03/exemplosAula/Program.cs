using Aula03;

Livro livro = new Livro(92,"21094830928402938","BD");

Livro livro1 = new Livro(12,"1234567","Giuseppe Cadura",135);

Livro livro2 = new Livro(52,"21019284044","DB");

Livro livro3 = new Livro(2,"1245657347","Manguais e Você",199);



say(livro.ISBN);
say(livro1.Titulo);


List<int> lista = new List<int>();

lista.Add(livro.Id);
lista.Add(livro1.Id);
lista.Add(livro2.Id);
lista.Add(livro3.Id);

foreach (var item in lista)
{
    say(item.ToString());
}

LivroRepository repository = new LivroRepository();
repository.Adicionar(livro);
repository.Adicionar(livro1);
repository.Adicionar(livro2);
repository.Adicionar(livro3);


foreach (var item in repository.GetAll())
{
    //say("O livro é " +item.Id +" e o ISBN é " +item.ISBN);
    say($"O livro é : {item.Titulo} e o ISBN é {item.ISBN}");
}


for(int i = 0; i < LivroRepository.listaLivro.Count; i ++){
    if(LivroRepository.listaLivro[i].Id==2){
        say(LivroRepository.listaLivro[i].Titulo);
    }
}

foreach (var item in LivroRepository.listaLivro)
{
    if(item.Id==2){
        say(item.Titulo);
    }
}

say(LivroRepository.listaLivro.Find(x=>x.Id==2).Titulo);













void say(string txt){
    Console.WriteLine(txt);
}

void see(){
    Console.ReadLine();
}