using System.Collections.Generic;
using System;

public class Ingrediente
{
    public int Id { get; set; }
    public string Nome { get; set; }
    public DateTime DataCompra { get; set; }
    public int DiasValidade { get; set; }

    public virtual ICollection<ItemPedido> ItensPedido { get; set; }
    public Ingrediente(int id, string nome, DateTime dataCompra, int diasValidade, ICollection<ItemPedido> itempedidos)
    {
        Id = id;
        Nome = nome;
        DataCompra = dataCompra;
        DiasValidade = diasValidade;
        ItensPedido = itempedidos;
    }
}