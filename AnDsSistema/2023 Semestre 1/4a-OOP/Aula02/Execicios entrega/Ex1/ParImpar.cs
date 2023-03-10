using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Execicios_entrega
{
    public class ParImpar
    {
        public string ParOuImpar(int numero){
            string CheckOdd;

            if(numero%2==0){
                CheckOdd = "par";
            } else {
                CheckOdd = "ímpar";
            }
            
            return CheckOdd;
        }
    }
}