public class Livro {

    String titulo;
    String autor;
    double preco;

    public String getTitulo(){

        return titulo;
    }
    public void setTitulo(String titulo){

        this.titulo = titulo;
    }

    public String getAutor(){

        return autor;
    }
    public void setAutor(String autor){

        this.autor = autor;
    }

    public double getPreco(){

        return preco;
    }
    public void setPreco(double preco){

        this.preco = preco;
    }

    public Livro(String _titulo, String _autor, double _preco){

        this.titulo = _titulo;
        this.autor = _autor;
        this.preco = _preco;
    }

    public Livro(String _titulo, String _autor){

        this.titulo = _titulo;
        this.autor = _autor;
        this.preco = 100;
    }
}
