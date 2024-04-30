using System;

public class Pagamento
{
    public int Id { get; set; }
    public int IdPedido { get; set; }
    public MetodoPagamento MetodoPagamento { get; set; }
    public DateTime DataPagamento { get; set; }
    public decimal ValorTotalPagamento { get; set; }

    public virtual Pedido Pedido { get; set; }
    public Pagamento(int id, int idPedido, MetodoPagamento metodoPagamento, DateTime dataPagamento, decimal valorTotalPagamento, Pedido pedido)
    {
        Id = id;
        IdPedido = idPedido;
        MetodoPagamento = metodoPagamento;
        DataPagamento = dataPagamento;
        ValorTotalPagamento = valorTotalPagamento;
        Pedido = pedido;
    }
    public void AdicionarPedido(int idPedido)
    {
        this.IdPedido = idPedido;
        if (Pedido.Id == idPedido)
        {
            Pedido = Pedido;
        }
        Console.WriteLine("Adicionando pedido extra ao pagamento...");
    }

    public decimal CalcularValorTotal()
    {
        Console.WriteLine($"Valor total do pedido: R${this.Pedido.ValorTotal + 10m}");
        return this.Pedido.ValorTotal + 10m;
    }

    public MetodoPagamento SelecionarMetodoPagamento()
    {
        Console.WriteLine($"Selecionado método de pagamento em {MetodoPagamento.Dinheiro}");
        return MetodoPagamento.Dinheiro;
    }

    public void EfetuarPagamento(MetodoPagamento metPag, decimal valTot, DateTime stamp)
    {
        this.MetodoPagamento = metPag;
        this.ValorTotalPagamento = valTot + CalcularValorTotal();
        this.DataPagamento = stamp;
        Console.WriteLine($"Efetuado pagamento de {CalcularValorTotal()} no método {SelecionarMetodoPagamento()}");
    }
}