namespace Sorveteria
{
    public class Program
    {
        public static void Main()
        {
            Ingrediente morango = new Ingrediente(1, "Morango", DateTime.Now.AddDays(-5), 7, new List<ItemPedido>());
            Ingrediente chocolate = new Ingrediente(2, "Chocolate", DateTime.Now.AddDays(-3), 10, new List<ItemPedido>());

            ItemPedido itemPedido1 = new ItemPedido(1, morango.Id, "Sundae de Morango", "Pendente", null);

            ItemPedido itemPedido2 = new ItemPedido(2, chocolate.Id, "Sundae de Chocolate", "Pendente", null);

            List<ItemPedido> itensPedidoDoCliente = new List<ItemPedido>();
            itensPedidoDoCliente.Add(itemPedido1);
            itensPedidoDoCliente.Add(itemPedido2);

            Cliente cliente = new Cliente(1, "João", "123456789", 5, null);

            Pedido pedidoCliente = new Pedido(1, DateTime.Now, 25.90m, cliente, 1, 1, null);

            Pagamento pagamentoCliente = new Pagamento(1, pedidoCliente.Id, MetodoPagamento.CartaoCredito, DateTime.Now, pedidoCliente.ValorTotal, null);

            List<Pedido> pedidosDoFuncionario = new List<Pedido>();
            pedidosDoFuncionario.Add(pedidoCliente);

            Funcionario funcionario = new Funcionario(1, "Maria", "Atendente", null, pedidosDoFuncionario);

            Console.WriteLine("Cliente: " + cliente.Nome);
            Console.WriteLine("Pedido do Cliente: " + pedidoCliente.Id);
            Console.WriteLine("Itens do Pedido:");
            foreach (var item in itensPedidoDoCliente)
            {
                Console.WriteLine("- " + item.Nome);
            }
            Console.WriteLine("Funcionário: " + funcionario.Nome);
            Console.WriteLine("Pedidos do Funcionário: ");
            foreach (var pedido in pedidosDoFuncionario)
            {
                Console.WriteLine("- Pedido #" + pedido.Id);
            }
        }
    }
}