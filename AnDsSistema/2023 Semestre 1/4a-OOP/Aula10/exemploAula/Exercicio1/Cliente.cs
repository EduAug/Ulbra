using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Exercicio1
{
    public class Cliente
    {
        
        private IPagamento formPgto;
        
        public Cliente(IPagamento pagamento)
        {

            this.formPgto = pagamento;
        }

        public string Comprar(decimal v2)
        {

            if(formPgto is Boleto)
            {
                return "Boleto no valor de R$"+formPgto.Pagar(v2);
            }else{
                return "Cartão de Crédito no valor de R$"+formPgto.Pagar(v2);
            }
        }
    }
}