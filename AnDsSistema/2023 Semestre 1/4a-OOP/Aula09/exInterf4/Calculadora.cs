using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace exInterf4
{
    public class Calculadora : ICalculadora
    {

        public double Somar(double n1, double n2)
        {
        
            return (n1+n2);
        }
        public double Subtrair(double n1, double n2)
        {
        
            return (n1-n2);
        }
        public double Multiplicar(double n1, double n2)
        {
        
            return (n1*n2);
        }
        public double Dividir(double n1, double n2)
        {
        
            if(double.IsInfinity(n1/n2))
            {
            
                Console.Write("Não divida por "); // Fomo de acoplamento
                return 0;
            }else{
            
                return n1/n2;
            }
        }
    }
}