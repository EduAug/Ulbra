using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AtividadeTDE
{
    public class Elgin : IImpressoraCodigoDeBarras
    {

        public int Resolução {get;set;}
        public int AlturaEtiqueta {get;set;}
        public int LarguraEtiqueta {get;set;}
        public string? TipoPapel {get;set;}

        public Elgin()
        {

            this.Resolução = 300;
            this.AlturaEtiqueta = 10;
            this.LarguraEtiqueta = 5;
            this.TipoPapel = "Papel adesivo";
        }

        public string ImprimirEtiquetasObj(int product)
        {

            return
            "\n|                  |"+
            "\n|                  |"+
            "\n|      "+product+"  |"+
            "\n|                  |"+
            "\n|                  |\n"
            ;
        }
    }
}