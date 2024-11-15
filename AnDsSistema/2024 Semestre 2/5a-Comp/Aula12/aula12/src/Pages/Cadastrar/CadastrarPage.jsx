import { useState } from 'react';
import { useNavigate } from 'react-router-dom';

function CadastrarPage(){

    const navigation = useNavigate();
    const [nome, setNome] = useState();
    const [foto, setFoto] = useState();
    const [desc, setDesc] = useState();
    const [price, setPrice] = useState();

    async function createProduct(product){
        await fetch(`http://localhost:3001/products`, {
            method: "POST",
            body: JSON.stringify(product)
        });

        navigation("/products");
    }

    function handleSubmit(event){
        event.preventDefault();
        const productNovo = 
        {
            name: nome, 
            price: price, 
            description: desc, 
            photo_url: foto
        }
        setNome('');
        setDesc('');
        setPrice('');
        setFoto('');

        createProduct(productNovo);
    }


    return(
    <>
    <h1>Cadastre um novo produto aqui</h1>
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
                <label>Descrição</label>
                <div className="campo">
                    <input
                        name="description"
                        value={desc}
                        id='fato'
                        onChange={(e)=> setDesc(e.target.value)}
                        type="text"
                    />
                </div>
            </div>

            <div className='questao'>
                <label>Preço</label>
                <div className="campo">
                    <input
                        name="price"
                        value={price}
                        id='fato'
                        onChange={(e)=> setPrice(e.target.value)}
                        type="text"
                    />
                </div>
            </div>

            <div className="btn-wrap">
                <button className='btn-form' type="submit">Cadastrar</button>
            </div>
        </form>
    </>
    );
}
export default CadastrarPage;