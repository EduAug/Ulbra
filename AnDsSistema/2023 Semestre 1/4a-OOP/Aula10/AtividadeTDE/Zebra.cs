using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AtividadeTDE
{
    public class Zebra : IImpressoraCodigoDeBarras
    {

        public int Resolução {get;set;}
        public int AlturaEtiqueta {get;set;}
        public int LarguraEtiqueta {get;set;}
        public string? TipoPapel {get;set;}

        public Zebra()
        {

            this.Resolução = 600;
            this.AlturaEtiqueta = 15;
            this.LarguraEtiqueta = 7;
            this.TipoPapel = "Poliéster";
        }

        public string ImprimirEtiquetasObj(int product)
        {

            return
            "\n|                          |"+
            "\n|                          |"+
            "\n|                          |"+
            "\n|                          |"+
            "\n|          "+product+"      |"+
            "\n|                          |"+
            "\n|                          |\n"
            ;
        }
    }
}