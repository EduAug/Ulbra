public class Main {
    public static void main(String[] args) {

    // EX 1
    Estudante est1 = new Estudante("Ronaldo",1146,"Direito");
    Estudante est2 = new Estudante("Phillip",945);

    System.out.println("Estudante: "+est1.nome+" | Matrícula: "+est1.matricula+" | Curso: "+est1.curso);
    System.out.println("Estudante: "+est2.nome+" | Matrícula: "+est2.matricula+" | Curso: "+est2.curso);


    System.out.println(" ");
    // EX 2
    Livro liv1 = new Livro("Contando com Fiddlesticks","Mark",163.40);
    Livro liv2 = new Livro("Livros não tem preço","Zé da Manga");// Valor padrão foi 100
    Livro liv3 = new Livro("Croacia: Mitos e Fatos","Mano Brown");

    System.out.println("Titulo: "+liv1.titulo+" | Autor: "+liv1.autor+" | Valor: "+liv1.preco);
    System.out.println("Titulo: "+liv2.titulo+" | Autor: "+liv2.autor+" | Valor: "+liv2.preco);
    System.out.println("Titulo: "+liv3.titulo+" | Autor: "+liv3.autor+" | Valor: "+liv3.preco);


    System.out.println(" ");
    // EX 3
    Cachorro dog1 = new Cachorro("Fido","Dálmata");// Idade "padrão" foi 3
    Cachorro dog2 = new Cachorro("Princesa","Pitbull");

    System.out.println("Nome: "+dog1.nome+"| Raça: "+dog1.raca+" | Idade: "+dog1.idade);
    System.out.println("Nome: "+dog2.nome+"| Raça: "+dog2.raca+" | Idade: "+dog2.idade);
    }
}