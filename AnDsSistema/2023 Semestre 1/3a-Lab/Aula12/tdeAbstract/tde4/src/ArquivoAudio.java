public class ArquivoAudio extends Arquivo{

    @Override
    public String abrir(){

        return "Abrindo arquivo .wav, tamanho 0 b, duração 0:00";
    }

    @Override
    public String fechar(){

        return "Arquivo .wav fechado, tamanho 0 b, duração 0:00";
    }
}
