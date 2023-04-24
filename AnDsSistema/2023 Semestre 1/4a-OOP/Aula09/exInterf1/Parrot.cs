using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace exInterf1
{
    
    public class Parrot
    {

        public string? Name {get;set;}
        public string EmitirSom()
        {
            
            return this.Name + " says Chirp";
        }
    }
}