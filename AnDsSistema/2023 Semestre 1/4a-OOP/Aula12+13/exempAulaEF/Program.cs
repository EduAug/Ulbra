using exempAulaEF;

var db = new DataContext();// Instanciar o banco

//{     REPOSITORIES
var perRepo = new PersonRepository(db); 
var proRepo = new ProductsRepository(db);
//}


//{     ENTIDADES "FIXAS" PARA O BANCO
var pessoa = new Person() 
{
    Id=123,
    Name="Jose Joãoestrela",
    Phone="19285600"
};
var pessoa2 = new Person()  
{
    Id=213,
    Name="Francisco Roberto",
    Phone="29225220"
};
var pessoaParaUpdate = new Person () 
{
    Id=111,
    Name="Oli",
    Phone="1593574862"
};

//      PRODUCTS

var prod = new Products() 
{
    Id=1,
    Description="Chocolate super choque",
    Price=12.04,
    PersonId=pessoa.Id
};
var prod2 = new Products() 
{
    Id=34,
    Description="Saco de Balas Chugarüss",
    Price=17.40,
    PersonId=pessoa2.Id
};
var produtoParaUpdate = new Products() 
{
    Id=2,
    Description="The Angel that presided 'oer my birth",
    Price=34.02,
    PersonId=pessoaParaUpdate.Id
};
//}



//{     ENTIDADES "ATUALIZADAS" PARA O BANCO
var pessoaUpdate = new Person() 
{
    Id=111,
    Name="Fred Flintstones",
    Phone="06090"
};


var newProdutoAtualizar = new Products() 
 {
    Id=2,
    Description="The Angel that presided 'oer my birth - William Blake",
    Price=37.49,
    PersonId=pessoaParaUpdate.Id
};
//}         NÃO SALVAR - SEM FKey "NOVA"



//{     ENTIDADES "REMOVIDAS" PARA O BANCO
var pessoaRemovida = new Person() 
{
    Id=1,
    Name="José Gota",
    Phone="11111111"
};
var prodRemovido = new Products() 
{
    Id=68,
    Description="Red Velvet",
    Price=12.04,
    PersonId=pessoa2.Id
};
//}


// Salvando no Banco
Console.WriteLine("Adicionando pessoas...");
/*
perRepo.Save(pessoa);
perRepo.Save(pessoa2);
perRepo.Save(pessoaParaUpdate);
perRepo.Save(pessoaRemovida);
*/

// Salvando produtos


Console.WriteLine("Adicionando Produtos...");
/*
proRepo.Save(prod);
proRepo.Save(prod2);
proRepo.Save(produtoParaUpdate);
proRepo.Save(prodRemovido);
*/

var checkSinglePerson = perRepo.GetById(213);
var checkSingleProduct = proRepo.GetById(34);


Console.WriteLine("\nPessoas:");
var allPeople = perRepo.GetAll();   //Lista de pessoas
listaGeral();



Console.WriteLine("\nProdutos:");
var allProducts = proRepo.GetAll(); //Lista de produtos
produtosGeral();



Console.WriteLine("Pessoa de Id 111:");
Console.WriteLine($"Id: {checkSinglePerson.Id}\t|Nome: {checkSinglePerson.Name}\t|Phone: {checkSinglePerson.Phone}");
Console.WriteLine("---------------");



Console.WriteLine("Produto de Id 2:");
Console.WriteLine($"Id: {checkSingleProduct.Id}\t|Item: {checkSingleProduct.Description}\t|Valor: {checkSingleProduct.Price}");
Console.WriteLine("---------------");


/*
Console.WriteLine("Atualizando pessoa de Id 111");
perRepo.Update(111, pessoaUpdate);
listaGeral();
*/

/*
Console.WriteLine("Atualizando produto de id 2");
proRepo.Update(2,newProdutoAtualizar);
produtosGeral();
*/

/*
Console.WriteLine("Removendo pessoa de Id 1");
perRepo.Delete(1);
*/

/*
Console.WriteLine("Apagando produto de Id 1");
proRepo.Delete(1);
*/









void listaGeral()
{

    foreach (var person in allPeople)
    {

        Console.WriteLine($"Id: {person.Id}\t|Nome: {person.Name}\t|Phone: {person.Phone}");
    }
    Console.WriteLine("---------------");
}


        // LISTA DE PRODUTOS "PUXANDO" PERSON
void produtosGeral()
{

    foreach (var products in allProducts)
    {

        Console.WriteLine($"Id: {products.Id}\t|Item: {products.Description}\t|Preço: {products.Price}\t|Comprador: {products.Person.Name}");
    }
    Console.WriteLine("---------------");
}


/*      // LISTA DE PRODUTOS PASSANDO POR PERSON
        // "LEGACY"
void produtosGeral()
{

    foreach (var products in allProducts)
    {

        var comprador = "";
        foreach (var buyer in allPeople)
        {
            
            if(buyer.Id == products.PersonId)
            {

                comprador = buyer.Name;
                break;
            }
        }

        Console.WriteLine($"Id: {products.Id}\t|Item: {products.Description}\t|Preço: {products.Price}\t|Comprador: {comprador}");
    }
    Console.WriteLine("---------------");
}
*/