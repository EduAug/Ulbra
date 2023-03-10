using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Ex6
{
    public class ContaBancaria
    {
        public int Numero{get; set;}
        public decimal Saldo{get; set;}

        public ContaBancaria(int numConta, decimal salConta=0.00m){
            Numero = numConta;
            Saldo = salConta;
        }

        public decimal Depositar(decimal addMoney){
            decimal addFun = addMoney;
            this.Saldo+=addFun;
            return addFun;
        }

        public decimal Sacar(decimal takeMoney){
            decimal takFun = takeMoney;
            if (this.Saldo-takFun >= 0){
                this.Saldo-=takFun;
                return takFun;
            } else {
                return this.Saldo;
            }
        }
    }
}