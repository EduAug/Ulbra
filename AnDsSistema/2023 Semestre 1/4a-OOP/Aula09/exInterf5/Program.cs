using System;
using exInterf5;

public class Program
{
	public static void Main()
	{
		
		IServicoPagamento card = new PagamentoCartao("1111 2222 4444 3335","9876 5432 1111 0000",1200);
		IServicoPagamento blto = new PagamentoBoleto("12.345.678/0001-34");
		IServicoPagamento payp = new PagamentoPaypal("josefumi@ga.br","12345678911",13);
		
		card.EfetuarPagamento(194);
		card.EstornarPagamento();
		card.EstornarPagamento();
		
		Console.WriteLine("\n#######################################################################################################\n");
		
		blto.EfetuarPagamento(300);
		blto.EstornarPagamento();
		
		Console.WriteLine("\n#######################################################################################################\n");
		
		payp.EfetuarPagamento(15);
		payp.EstornarPagamento();
	}
}
