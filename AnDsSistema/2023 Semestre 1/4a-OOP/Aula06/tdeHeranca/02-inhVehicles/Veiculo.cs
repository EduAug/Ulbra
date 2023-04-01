using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace _02_inhVehicles
{
    public class Veiculo
    {
        public string Modelo {get;set;}
        public Veiculo(string model){

            this.Modelo = model;
        }

        public void Acelerar(){

            Console.WriteLine("Acelerando "+this.Modelo+"!");
        }
    }
}