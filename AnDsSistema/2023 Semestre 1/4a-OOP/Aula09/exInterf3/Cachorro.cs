using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace exInterf3
{
    public class Cachorro : IAnimalEstimacao
    {

        public string Nome {get;set;}
        public string Dono {get;set;} 
        
        public Cachorro(string _nome, string _dono)
        {
        
            this.Nome = _nome;
            this.Dono = _dono;
        }
    }
}