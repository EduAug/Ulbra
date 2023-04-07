using _01_inhAnimals;

Cachorro dog = new Cachorro("Jacques");
Gato cat = new Gato("Rousseau");

Console.Write($"{dog.Nome} says ");
dog.Falar();
Console.Write($"{cat.Nome} says ");
cat.Falar();