using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Exercicio2
{
    public class Escola
    {
        
        public string ApresentarPessoa(IPessoa apresentado)
        {

            return apresentado.Falar(apresentado.Nome,apresentado.Idade);
        }
    }
}