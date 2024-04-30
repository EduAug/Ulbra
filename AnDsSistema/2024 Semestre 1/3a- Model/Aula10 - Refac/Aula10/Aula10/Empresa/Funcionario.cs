using System.Collections.Generic;
using System;

public class Funcionario
{
    public int Id { get; set; }
    public string Nome { get; set; }
    public string Cargo { get; set; }

    public virtual Estabelecimento Estabelecimento { get; set; }

    public virtual ICollection<Pedido> Pedidos { get; set; }

    public Funcionario(int id, string nome, string cargo, Estabelecimento estab, ICollection<Pedido> peds)
    {
        Id = id;
        Nome = nome;
        Cargo = cargo;
        Estabelecimento = estab;
        Pedidos = peds;
    }

    public void AnotarPedido()
    {
        Console.WriteLine("Anotando pedido...");
        foreach (var i in Pedidos)
        {
            Console.WriteLine(i.IdItemPedido);
        }
    }

    public void EncaminharPedido()
    {
        Console.WriteLine("Pedido encaminhado à cozinha...");
    }

    public void PrepararPedido()
    {
        Console.WriteLine("Em preparação...");
    }

    public void JuntarPedido(Pedido pegar)
    {
        this.Pedidos.Add(pegar);
        Console.WriteLine("Pronto para levar à mesa.");
    }
}