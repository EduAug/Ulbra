public class DiscoRigido extends DispositivoArmazenamento{

    @Override
    public void gravarDados(String data){

        System.out.println(data+" gravado com sucesso");
    }

    @Override
    public String lerDados(){

        return "Dados presentes no disco D: ";
    }
}
