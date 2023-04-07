using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace _01_inhAnimals
{
    public abstract class Animal
    {
        public string Nome {get; set;}

        public Animal(string nome){
            this.Nome = nome;
        }
        public virtual void Falar(){}
    }
}