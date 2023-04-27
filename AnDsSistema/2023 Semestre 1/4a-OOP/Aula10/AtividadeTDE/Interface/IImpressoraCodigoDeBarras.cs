using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AtividadeTDE
{
    public interface IImpressoraCodigoDeBarras
    {
        
        public int Resolução {get;set;}
        public int AlturaEtiqueta {get;set;}
        public int LarguraEtiqueta {get;set;}
        public string? TipoPapel {get;set;}


        public string ImprimirEtiquetasObj(int product);
    }
}