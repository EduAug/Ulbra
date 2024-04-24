using System;

namespace Sorveteria {
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
    public class Estoque
    {
        public int ItemId { get; set; }
        public int Quantidade { get; set; }

        public Estoque(int itemId, int quantidade)
        {
            ItemId = itemId;
            Quantidade = quantidade;
        }

        public void SubtrairQuantidadeItem()
        {
            this.Quantidade -= 1;
        }

        public void AdicionarQuantidadeItem()
        {
            this.Quantidade += 1;
        }
    }
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
        public void AdicionarIngrediente()
        {
            Console.WriteLine("Adicionando ingrediente ao item...");
        }

        public void ModificarStatus()
        {
            Console.WriteLine("Status alterado");
            if (Status != "pronto") this.Status = "pronto";
            if (Status == "pronto") this.Status = "em produção...";
        }
    }
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

        public void AdicionarValor()
        {
            this.ValorTotal += 10m;
        }

        public void EncaminharParaFuncionario()
        {
            Console.WriteLine($"Encaminhado para o funcionário {this.IdFuncionario}");
        }

        public void AdicionarItemPedido()
        {
            Console.WriteLine("Adicionando item ao pedido...");
        }

        public void EmitirPedido()
        {
            Console.WriteLine($"Pedido emitido para cliente {Cliente.Nome}");
        }
    }
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
        public void AdicionarPedido()
        {
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

        public void EfetuarPagamento()
        {
            Console.WriteLine($"Efetuado pagamento de {CalcularValorTotal()} no método {SelecionarMetodoPagamento()}");
        }
    }
    public enum MetodoPagamento
    {
        Dinheiro,
        CartaoCredito,
        CartaoDebito,
        Pix
    }
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

        public void ChamarAtendente()
        {
            Console.WriteLine($"Chamando funcionário para mesa {Mesa} [SOLICITADO POR {Nome}]...");
        }
    }
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
            foreach(var i in Pedidos)
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

        public void JuntarPedido()
        {
            Console.WriteLine("Pronto para levar à mesa.");
        }
    }

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