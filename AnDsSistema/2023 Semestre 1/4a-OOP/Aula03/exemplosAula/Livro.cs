using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Aula03
{
    public class Livro
    {
        public int Id{get; private set;}
        public string ISBN { get; private set; }
        public string Titulo { get; private set; }
        public double Preco { get; set; }

        public Livro(int id, string isbn, string titulo, double preco=0){
            this.Id = id;
            this.ISBN = isbn;
            this.Titulo = titulo;
            this.Preco = preco;
        }

        public static List<Livro>GetAll(){
            return new List<Livro>();
        }
    }
}