using System.Collections.Generic;
using System;

public class Pedido
{
    public int Id { get; set; }
    public DateTime Data { get; set; }
    public decimal ValorTotal { get; set; }
    public int IdCliente { get; set; }
    public int IdFuncionario { get; set; }
    public int IdItemPedido { get; set; }

    public virtual Pagamento Pagamento { get; set; }

    public virtual Cliente Cliente { get; set; }

    public virtual ICollection<Funcionario> Funcionarios { get; set; }

    public Pedido(int id, DateTime data, decimal valorTotal, Cliente cliente, int idFuncionario, int idItemPedido, ICollection<Funcionario> funcs)
    {
        Id = id;
        Data = data;
        ValorTotal = valorTotal;
        IdFuncionario = idFuncionario;
        IdItemPedido = idItemPedido;
        Cliente = cliente;
        Funcionarios = funcs;
    }

    public void AdicionarValor(decimal valor)
    {
        this.ValorTotal += valor;
    }

    public void EncaminharParaFuncionario()
    {
        Console.WriteLine($"Encaminhado para o funcionário {this.IdFuncionario}");
    }

    public void AdicionarItemPedido(int idItPed)
    {
        IdItemPedido = idItPed;
    }

    public void EmitirPedido()
    {
        Console.WriteLine($"Pedido emitido para cliente {Cliente.Nome} \n Item {IdItemPedido}");
    }
}