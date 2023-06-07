public interface Persistente{
    void salvar(String name, int idade);
    void atualizar(String name, int idade, int seletor);
    void deletar();
    void buscar();
}
