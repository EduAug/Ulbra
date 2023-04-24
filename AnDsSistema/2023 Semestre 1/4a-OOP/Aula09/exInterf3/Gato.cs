using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace exInterf3
{
    public class Gato : IAnimalEstimacao
    {

        public string Nome {get;set;}
        public string Dono {get;set;}
        
        public Gato(string _nome, string _dono)
        {
        
            this.Nome = _nome;
            this.Dono = _dono;
        }
    }
}