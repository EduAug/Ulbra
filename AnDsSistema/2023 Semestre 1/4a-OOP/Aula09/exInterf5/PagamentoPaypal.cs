using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace exInterf5
{
    public class PagamentoPaypal : IServicoPagamento
    {
        
        public string CodigoPagamento {get;set;}
        public string contaPaypal {get;set;}
        public double saldoPaypal {get;set;}
        
        double lastTransfer = 0;
        
        public PagamentoPaypal(string pagamento, string conta, double saldo)
        {
        
            this.CodigoPagamento = pagamento;
            this.contaPaypal = conta;
            this.saldoPaypal = saldo;
        }
        public void EfetuarPagamento(double valor)
        {
        
            if(valor < saldoPaypal)
            {
            
                Console.WriteLine("Transferência para "+CodigoPagamento+" efetuada com sucesso");
                saldoPaypal -= valor;
                Console.WriteLine("Saldo: R$"+saldoPaypal);
                lastTransfer = valor;
            }else
            {
            
                Console.WriteLine("Saldo insuficiente para realizar a transferência");
                Console.WriteLine("Saldo: R$"+saldoPaypal);
            }
        }
        
        public void EstornarPagamento()
        {
        
            if(lastTransfer > 0)
            {
            
                Console.WriteLine("Entramos em contato com "+CodigoPagamento+" e requisitamos o estorno de R$"+lastTransfer);
                saldoPaypal += lastTransfer;
                lastTransfer = 0;
            }else
            {
            
                Console.WriteLine("Não foi detectado pagamento feito para "+CodigoPagamento+" em nosso sistema, você pode já ter requerido o estorno ou digitou incorretamente o código");
            }
        }
    }
}