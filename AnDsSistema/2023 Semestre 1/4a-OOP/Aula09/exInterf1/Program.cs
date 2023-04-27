using System;
using exInterf1;			

public class Program
{
	public static void Main()
	{
		
		IAnimal _dog = new Dog();
		IAnimal _cat = new Cat();
		IAnimal _parrot = new Parrot();
		
		
		_dog.Name = "Fido";
		_cat.Name = "Clover";
		_parrot.Name = "Jack";
		
		Console.WriteLine(_dog.EmitirSom());
		Console.WriteLine(_cat.EmitirSom());
		Console.WriteLine(_parrot.EmitirSom());
	}
}