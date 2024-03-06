using System;
using System.Collections.Generic;
using System.Linq;

namespace revisao_03
{
    public class Voo
    {
        public string CompanhiaAerea { get; set; }
        public string Origem { get; set; }
        public string Destino { get; set; }
        public DateTime DataPartida { get; set; }
        public decimal PrecoPassagem { get; set; }

        public Voo(string _companhia, string _origem, string _destino, DateTime _partida, decimal _preco)
        { 
            this.CompanhiaAerea = _companhia;
            this.Origem = _origem;
            this.Destino = _destino;
            this.DataPartida = _partida;
            this.PrecoPassagem = _preco;
        }

        public string InformacoesVoo() 
        {
            return $"O voo da companhia {CompanhiaAerea} com origem em {Origem} e destino em {Destino} sairá em {DataPartida}. Passagens a partir de R$ {PrecoPassagem}.";
        }
    }
}
