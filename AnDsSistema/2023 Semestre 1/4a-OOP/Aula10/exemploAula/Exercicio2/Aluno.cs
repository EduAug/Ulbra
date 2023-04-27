using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Exercicio2
{
    public class Aluno : IPessoa
    {
        
        public string? Nome {get;set;}
        public int Idade {get;set;}

        public Aluno(string? _nome, int _idade)
        {

            this.Nome = _nome;
            this.Idade = _idade;
        }

        public string Falar(string nam, int age){

            return "Eu sou "+nam+" tenho "+age+" anos.";
        }

        // public string Aprender(){}
    }
}