using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace exInterf5
{
    public class PagamentoCartao : IServicoPagamento
    {
        
        public string CodigoPagamento {get;set;}
        public string nroCartao {get;set;}
        public double saldoCartao {get;set;}
        
        double lastPayment = 0;
        
        public PagamentoCartao(string pagamento, string cartao, double saldo)
        {
            
            this.CodigoPagamento = pagamento;
            this.nroCartao = cartao;
            this.saldoCartao = saldo;
        }
        
        public void EfetuarPagamento(double valor)
        {
        
            if(valor > this.saldoCartao)
            {
            
                Console.WriteLine("Saldo insuficiente no cartão "+nroCartao);
            }else
            {
            
                Console.WriteLine("Pagamento efetuado com sucesso!");
                saldoCartao -= valor;
                Console.WriteLine("Saldo atual: R$"+saldoCartao);
                lastPayment = valor;
            }
        }
        
        public void EstornarPagamento()
        {
        
            if(lastPayment > 0){
            
                Console.WriteLine("Solcitado estorno do valor de R$"+lastPayment+" referente ao pagamento realizado para "+CodigoPagamento);
                saldoCartao += lastPayment;
                lastPayment = 0;
            }else{
            
                Console.WriteLine("Não foi detectado pagamento para "+CodigoPagamento);
            }
        }
    }
}