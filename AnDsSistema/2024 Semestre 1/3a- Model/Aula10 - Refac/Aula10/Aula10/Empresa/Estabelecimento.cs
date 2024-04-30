using System;

public class Estabelecimento
{
    public int Id { get; set; }
    public string CNPJ { get; set; }
    public string Nome { get; set; }
    public string Endereco { get; set; }
    public string Cidade { get; set; }

    public virtual Estoque Estoque { get; set; }
    public Estabelecimento(int id, string cnpj, string nome, string endereco, string cidade, Estoque estoque)
    {
        Id = id;
        CNPJ = cnpj;
        Nome = nome;
        Endereco = endereco;
        Cidade = cidade;
        Estoque = estoque;
    }
    public void IniciarAtividades()
    {
        Console.WriteLine("Abrindo o estabelecimento...");
    }

    public void EncerrarAtividades()
    {
        Console.WriteLine("Fechando o estabelecimento...");
    }
}