using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Aula04
{
    public class Endereco
    {
        public int Id {get; set;}

        public String Logradouro { get; set; }

        public Pessoa Pessoa{get; private set;}

        /*public Endereco(int id, string logradouro){
            this.Id = id;
            this.Logradouro = logradouro;
        } Exemplo Sobrecarga*/
        public Endereco(int id, string logradouro, Pessoa pessoa){
            this.Id = id;
            this.Logradouro = logradouro;
            this.Pessoa = pessoa;
        }
        
    }
}