using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Ex5
{
    public class Pessoa
    {
        public string Nome{get; private set;}
        public int Age{get; private set;}
        public Pessoa(string NomePessoa, int AgePessoa){
            this.Nome  = NomePessoa;
            this.Age = AgePessoa;
        }

        public object[] Apresentar(string nome, int ida){
            string nomePres = this.Nome;
            int idaPres = this.Age;
            return new object[] {nomePres, idaPres};
        }
    }
}