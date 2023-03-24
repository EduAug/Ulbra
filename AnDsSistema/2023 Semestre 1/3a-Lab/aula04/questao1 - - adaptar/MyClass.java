public class MyClass {
    public static void main(String args[]) {
        Relogio relogio = new Relogio();
        
        int entHor = 15;
        int entMin = 70;
        int entSeg = 5;
        boolean isAm = false;
        
        relogio.acertarRelogio(entHor, entMin, entSeg);
        
        relogio.checarHora();
        
        relogio.checarMinuto();
        
        relogio.checarSegundo();
        
        relogio.horaAtual(isAm);
        
    }
}
