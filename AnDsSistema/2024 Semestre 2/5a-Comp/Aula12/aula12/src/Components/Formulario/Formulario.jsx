import { useState } from 'react';
import './Formulario.css';

function Formulario({ metodoParaAdicionarNaLista }) {

    const [nome, setNome] = useState();
    const [foto, setFoto] = useState();
    const [fato, setFato] = useState();

    function handleSubmit(event){
        event.preventDefault();
        const pessoaNova = 
        {
            nome: nome,
            foto: foto,
            fato: fato
        }
        metodoParaAdicionarNaLista(pessoaNova);
        setNome('');
        setFato('');
        setFoto('');
    }


    return(
    <>
        <form onSubmit={handleSubmit} className="form-container">
        <div className='questao'>
            <label>Nome</label>
            <div className="campo">
                <input
                    name="nome"
                    value={nome}
                    type="text"
                    id='nome'
                    onChange={(e)=> setNome(e.target.value)}
                    required
                />
            </div>
        </div>

        <div className="questao">
            <label>Foto</label>
            <div className="campo">
                <input
                    name="foto"
                    value={foto}
                    type="text"
                    id='foto'
                    onChange={(e)=> setFoto(e.target.value)}
                    required
                />
            </div>
        </div>

        <div className='questao'>
            <label>Fato Curioso</label>
            <div className="campo">
                <input
                    name="fato"
                    value={fato}
                    id='fato'
                    onChange={(e)=> setFato(e.target.value)}
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