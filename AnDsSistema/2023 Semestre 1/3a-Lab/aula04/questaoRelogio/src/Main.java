public class Main {
    public static void main(String[] args) {
        Relogio relogio = new Relogio();

        int entHor = 15;
        int entMin = 70;
        int entSeg = 5;
        boolean isAm = true;

        relogio.acertarRelogio(entHor, entMin, entSeg);

        relogio.checarHora();

        relogio.checarMinuto();

        relogio.checarSegundo();

        relogio.horaAtual(isAm);
    }
}