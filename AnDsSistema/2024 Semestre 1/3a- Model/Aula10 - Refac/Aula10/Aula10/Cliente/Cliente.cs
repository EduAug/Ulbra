using System.Collections.Generic;
using System;

public class Cliente
{
    public int Id { get; set; }
    public string Nome { get; set; }
    public string Telefone { get; set; }
    public int Mesa { get; set; }

    public virtual ICollection<Pedido> Pedidos { get; set; }
    public Cliente(int id, string nome, string telefone, int mesa, ICollection<Pedido> pedidos)
    {
        Id = id;
        Nome = nome;
        Telefone = telefone;
        Mesa = mesa;
        Pedidos = pedidos;
    }

    public void Cadastrar()
    {
        Console.WriteLine($"Cadastrando cliente {Nome} | {Id} (Atualmente na mesa {Mesa})");
    }

    public void OcuparMesa()
    {
        Console.WriteLine("Encaminhando cliente à mesa...");
        this.Mesa = new Random().Next();
    }

    public void LiberarMesa()
    {
        Console.WriteLine("Retirando cliente da mesa...");
        this.Mesa = -1;
    }

    public void ChamarAtendente(Pedido decisao, Funcionario atendente)
    {
        atendente.JuntarPedido(decisao);
        Console.WriteLine($"Chamando funcionário para mesa {Mesa} [SOLICITADO POR {Nome}]...");
    }
}