using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace exInterf5
{
    public interface IServicoPagamento
    {
        
        string CodigoPagamento {get;set;}
        
        void EfetuarPagamento(double valor);
        
        void EstornarPagamento();
    }
}