using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace exInterf1
{
    public interface IAnimal
    {

        public string? Name {get;set;}        
	    string EmitirSom();
    }
}