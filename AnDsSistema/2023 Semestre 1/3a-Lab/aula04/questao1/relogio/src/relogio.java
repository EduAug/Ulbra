public class relogio {
    ponteiro ponteiroHora = new ponteiro();
    ponteiro ponteiroMinuto = new ponteiro();
    ponteiro ponteiroSegundo = new ponteiro();


    void acertarRelogio(int hora, int minuto, int segundo){
        ponteiroHora.posicao = hora;
        ponteiroMinuto.posicao = minuto;
        ponteiroSegundo.posicao = segundo;
    }
}
