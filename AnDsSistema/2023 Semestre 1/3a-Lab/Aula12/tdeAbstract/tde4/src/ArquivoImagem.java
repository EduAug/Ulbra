public class ArquivoImagem extends Arquivo{

    @Override
    public String abrir(){

        return "Abrindo arquivo .jpg, tamanho 0 b, resolução 0 x 0";
    }

    @Override
    public String fechar(){

        return "Arquivo .jpg fechado, tamanho 0 b, resolução 0 x 0";
    }
}
