using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Ex4
{
    public class Calculadora
    {
        public double Somar(double num1, double num2){
            double resultado = num1+num2;
            return resultado;
        }
        public double Subtrair(double num1, double num2){
            double resultado = num1-num2;
            return resultado;
        }
    }
}