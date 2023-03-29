public class Main {
    public static void main(String[] args) {
        Relogio relogio = new Relogio();

        int entHor = 22;
        int entMin = 55;
        int entSeg = 120;
        boolean isAm = true;

        relogio.acertarRelogio(entHor, entMin, entSeg);

        relogio.checarHora();

        relogio.checarMinuto();

        relogio.checarSegundo();

        relogio.horaAtual(isAm);
    }
}