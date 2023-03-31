using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Aula04
{
    public abstract class Pessoa
    {
        
        public int Id {get; protected set;}

        public string Nome { get; set; }

        public Cidade City { get; set; }

        public List<Endereco> Enderecos{ get; set; }

        public Pessoa(int id, string nome, Cidade city){ 
            this.Id=id;
            this.Nome=nome;
            this.City=city;
            Enderecos = new List<Endereco>();
         }

         public void AddEndereco(Endereco endereco){
            this.Enderecos.Add(endereco);
         }
    }
}