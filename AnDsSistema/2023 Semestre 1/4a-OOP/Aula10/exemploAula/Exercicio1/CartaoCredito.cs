using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Exercicio1
{
    public class CartaoCredito : IPagamento
    {
        
        public decimal Pagar(decimal v1){

            return v1;
        }
    }
}