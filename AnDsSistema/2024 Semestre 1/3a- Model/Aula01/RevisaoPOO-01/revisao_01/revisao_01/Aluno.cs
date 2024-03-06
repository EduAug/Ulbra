using System;
using System.Collections.Generic;
using System.Linq;

namespace revisao_01
{
    internal class Aluno
    {
        public string Nome { get; set; }
        public int Idade { get; set; }
        public int Matricula { get; set; }
        public string Curso { get; set; }

        public Aluno(string _nome, string _curso, int _idade, int _matricula) 
        {
            this.Nome = _nome;
            this.Curso = _curso;
            this.Idade  = _idade;
            this.Matricula = _matricula;
        }

        public string MostrarInformacoes() 
        {
            return $"Meu nome é {this.Nome}, tenho {this.Idade} anos de idade. Minha matrícula é {this.Matricula} e estou cursando {this.Curso}.";
        }
    }
}
