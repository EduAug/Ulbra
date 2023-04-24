using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace exInterf5
{
    public class PagamentoBoleto : IServicoPagamento
    {
        
        public string CodigoPagamento {get;set;}
        
        public PagamentoBoleto(string beneficiario)
        {
        
            this.CodigoPagamento = beneficiario;
        }
        
        public void EfetuarPagamento(double valor)
        {
        
            Console.WriteLine("Efetuado com sucesso pagamento do boleto para " +CodigoPagamento);
        }
        
        public void EstornarPagamento()
        {
        
            Console.WriteLine("Não é possível requerer estorno de pagamentos realizados por boleto. Entre em contato com "+CodigoPagamento+" e peça a devolução do valor");
        }
    }
}