using System;
using exInterf2;		

public class Program
{
	
	public static void Main()
	{
		
		FormatadorMaiusculo maiu = new FormatadorMaiusculo();
		FormatadorMinusculo minu = new FormatadorMinusculo();
		FormatadorInvertido inve = new FormatadorInvertido();
		FormatadorEspelhado espe = new FormatadorEspelhado();
		
		Console.WriteLine(maiu.Formatar("rogerinho todo minusculo"));
		Console.WriteLine(minu.Formatar("VOCE ABRIU A CAIXA?"));
		Console.WriteLine(inve.Formatar("AbcdEfghI"));
		Console.WriteLine(espe.Formatar("Palindromo: Luz azul"));
	}
}
