public class Relogio {
    Ponteiro ponteiroHora = new Ponteiro();
    Ponteiro ponteiroMinuto = new Ponteiro();
    Ponteiro ponteiroSegundo = new Ponteiro();


    void acertarRelogio(int hora, int minuto, int segundo){

        while (hora > 12){

            hora = hora-12;
        }
        while (minuto > 60){

            minuto = minuto-60;
        }
        while (segundo > 60){

            segundo = segundo-60;
        }
        ponteiroHora.posicao = hora;
        ponteiroMinuto.posicao = (minuto/5);
        ponteiroSegundo.posicao = (segundo/5);
    }

    void checarHora(){

        System.out.println("O ponteiro das horas está na posição " +ponteiroHora.posicao);
    }

    void checarMinuto(){

        System.out.println("O ponteiro dos minutos está na posição " +ponteiroMinuto.posicao);
    }

    void checarSegundo(){

        System.out.println("O ponteiro dos segundos está na posição " +ponteiroSegundo.posicao);
    }

    void horaAtual(boolean AMPM){

        if(AMPM){

            ponteiroMinuto.posicao = ponteiroMinuto.posicao * 5;
            ponteiroSegundo.posicao = ponteiroSegundo.posicao * 5;
            String horaForm = String.format("%02d", ponteiroHora.posicao);
            String minForm = String.format("%02d", ponteiroMinuto.posicao);
            String segForm = String.format("%02d", ponteiroSegundo.posicao);
            System.out.println("São " +horaForm +":" +minForm +":" +segForm);
        }else{

            ponteiroHora.posicao = ponteiroHora.posicao + 12;
            ponteiroMinuto.posicao = ponteiroMinuto.posicao * 5;
            ponteiroSegundo.posicao = ponteiroSegundo.posicao * 5;
            String horaForm = String.format("%02d", ponteiroHora.posicao);
            String minForm = String.format("%02d", ponteiroMinuto.posicao);
            String segForm = String.format("%02d", ponteiroSegundo.posicao);
            System.out.println("São " +horaForm +":" +minForm +":" +segForm);
        }
    }
}
