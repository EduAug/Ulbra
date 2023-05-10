public class ArquivoTexto extends Arquivo{

    @Override
    public String abrir(){

        return "Abrindo arquivo .txt, tamanho 0 b, 0 linhas";
    }

    @Override
    public String fechar(){

        return "Arquivo .txt fechado, tamanho atual 0 b, 0 linhas";
    }
}
