using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace exInterf4
{
    public interface ICalculadora
    {

        double Somar(double n1, double n2);
        double Subtrair(double n1, double n2);
        double Multiplicar(double n1, double n2);
        double Dividir(double n1, double n2);
    }
}