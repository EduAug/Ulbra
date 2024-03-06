using System;
using System.Collections.Generic;
using System.Linq;

namespace revisao_02
{
    public class Praia
    {
        public string Nome { get; set; }
        public string Local { get; set; }
        public string TipoAreia { get;set; }
        public double TemperaturaAgua { get; set; }

        public Praia(string _nome, string _local, string _areia, double _temp) 
        {
            this.Nome = _nome;
            this.Local = _local;
            this.TipoAreia = _areia;
            this.TemperaturaAgua = _temp;
        }

        public string informacoesPraia() 
        {
            return $"{Nome}, localiada em {Local}. Possui areia do tipo {TipoAreia} e água a {TemperaturaAgua}° C.";
        }
    }
}
