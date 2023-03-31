using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Aula04
{
    public class PessoaFisica : Pessoa
    {
        public PessoaFisica(int id, string nome, Cidade city, string cpf) 
                            : base(id,nome,city){
                                this.CPF = cpf;
                            }
        public String CPF { get; set; }

        public void testeId(){
            this.Id = 10000102;
        }
    }
}