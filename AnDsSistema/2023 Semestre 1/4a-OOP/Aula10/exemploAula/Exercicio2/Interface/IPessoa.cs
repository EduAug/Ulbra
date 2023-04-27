using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Exercicio2
{
    public interface IPessoa
    {
        
        string? Nome {get;set;}
        int Idade {get;set;}

        public string Falar(string nam, int age);
    }
}