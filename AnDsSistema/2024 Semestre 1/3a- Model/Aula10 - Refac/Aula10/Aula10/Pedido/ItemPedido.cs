using System;

public class ItemPedido
{
    public int Id { get; set; }
    public int IdIngrediente { get; set; }
    public string Nome { get; set; }
    public string Status { get; set; }

    public virtual Pedido Pedido { get; set; }

    public ItemPedido(int id, int idIngrediente, string nome, string status, Pedido pedido)
    {
        Id = id;
        IdIngrediente = idIngrediente;
        Nome = nome;
        Status = status;
        Pedido = pedido;
    }
    public void AdicionarIngrediente(int idIngediente)
    {
        IdIngrediente = idIngediente;
    }

    public void ModificarStatus()
    {
        Console.WriteLine("Status alterado");
        if (Status != "pronto") this.Status = "pronto";
        if (Status == "pronto") this.Status = "em produção...";
    }
}