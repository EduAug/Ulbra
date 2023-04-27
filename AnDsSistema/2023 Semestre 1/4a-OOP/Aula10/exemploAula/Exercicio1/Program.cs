using Exercicio1;

IPagamento metodoBoleto = new Boleto();
IPagamento metodoCartao = new CartaoCredito();

var clienteBoleto = new Cliente(metodoBoleto);
var clienteCartao = new Cliente(metodoCartao);


Console.WriteLine("O cliente realizou um pagamento por "+clienteBoleto.Comprar(126));
Console.WriteLine("O cliente realizou um pagamento por "+clienteCartao.Comprar(15));