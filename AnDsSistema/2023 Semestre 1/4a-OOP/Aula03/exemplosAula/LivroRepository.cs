using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Aula03
{
    public class LivroRepository
    {

        public static List<Livro> listaLivro = new List<Livro>();

        public List<Livro>GetAll(){
            return listaLivro;
        }

        public Livro GetById(int id){
            return listaLivro.Find(liId => liId.Id == id);
        }

        

        public void Deletar(int id){
            // Remover o livro baseado nessa id
        }

        public void Adicionar(Livro livro){
            listaLivro.Add(livro);
        }
    }
}