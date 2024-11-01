import './Formulario.css';

function Formulario({ metodoParaAdicionarNaLista }) {
    
    function handleSubmit(event){
        event.preventDefault();
        const formData = new FormData(event.target);
        const pessoaNova = 
        {
            nome: formData.get('nome'),
            foto: formData.get('foto'),
            fato: formData.get('fato')
        }
        metodoParaAdicionarNaLista(pessoaNova);
    }
    return(
    <>
        <form onSubmit={handleSubmit} className="form-container">
        <div className='questao'>
            <label>Nome</label>
            <div className="campo">
                <input
                    name="nome"
                    type="text"
                    required
                />
            </div>
        </div>

        <div className="questao">
            <label>Foto</label>
            <div className="campo">
                <input
                    name="foto"
                    type="text"
                    required
                />
            </div>
        </div>

        <div className='questao'>
            <label>Fato Curioso</label>
            <div className="campo">
                <input
                    name="fato"
                    type="text"
                />
            </div>
        </div>

        <div className="btn-wrap">
            <button className='btn-form' type="submit">Adicionar</button>
        </div>
    </form>
    </>
    );
}
export default Formulario;