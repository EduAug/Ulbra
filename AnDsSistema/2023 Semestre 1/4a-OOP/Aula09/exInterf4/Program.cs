using System;
using exInterf4;

public class Program
{
	public static void Main()
	{
		
		Calculadora calc = new Calculadora();
		
		Console.WriteLine(calc.Somar(14.5,3.14));
		Console.WriteLine(calc.Subtrair(19,37));
		Console.WriteLine(calc.Multiplicar(3.2,4));
		Console.WriteLine(calc.Dividir(10,0));
		Console.WriteLine(calc.Dividir(13,2));
	}
}
