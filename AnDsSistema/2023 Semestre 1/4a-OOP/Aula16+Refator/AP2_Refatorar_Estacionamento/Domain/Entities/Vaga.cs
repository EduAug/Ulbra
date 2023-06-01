using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AP2_Refatorar_Estacionamento
{
    public class Vaga
    {
        
        public int Id {get;set;} //Serve como o "número" da vaga
       
        public int? VeiculoId {get;set;}
        public Veiculo? Estacionado {get;set;}
    }
}