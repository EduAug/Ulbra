using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace _01_inhAnimals
{
    public class Cachorro : Animal
    {
        
        public Cachorro(string nome) : base(nome){}

        public override void Falar(){

            Console.WriteLine("Au");
        }
    }
}