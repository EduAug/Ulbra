public class Bateria implements Carregavel , Descarregavel{

    public void carga(int percentage){
        if(percentage > 0){
            System.out.println("Carregando!");
        }else{
            System.out.println("Descarregando...");
        }
    }
}
