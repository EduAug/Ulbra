using System;
using exInterf3;	


public class Program
{
	public static void Main()
	{
		
		Cachorro _cachorro = new Cachorro("Scoob","Salsicha");
		Gato _gato = new Gato("Mingau","Magali");
		List<IAnimalEstimacao> listaPets = new List<IAnimalEstimacao>();
		
		Console.WriteLine("Pet:		Dono:");

		listaPets.Add(_gato);
		listaPets.Add(_cachorro);
		foreach (IAnimalEstimacao pet in listaPets)
		{
			
			Console.WriteLine(pet.Nome+"\t\t"+pet.Dono);
		}

		/*	Versão 1.0
		Console.WriteLine(_cachorro.Nome +"	  " +_cachorro.Dono);
		Console.WriteLine(_gato.Nome +"	  " +_gato.Dono);
		*/
	}
}
