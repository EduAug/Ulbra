import { useState } from 'react';
import './CriarProdutos.css';

function CriarProdutosPage(){

    const [nome, setNome] = useState();
    const [price, setPrice] = useState();
    const [description, setDesc] = useState();
    const [photo, setPhoto] = useState();

    async function createProduct(product){
        await fetch(`http://localhost:3001/products`, {
            method: "POST",
            body: JSON.stringify(product)
        });
    }
    
    function handleSubmit(event){
        event.preventDefault();
        const productNovo = 
        {
            name: nome, 
            price: price, 
            description: description, 
            photo_url: photo
        }
        setNome('');
        setDesc('');
        setPrice('');
        setPhoto('');
        createProduct(productNovo);
    }

    return(
        <>
        <h1  className="titulo-page">Adicionar produto ao catálogo</h1>
        <form onSubmit={handleSubmit} className="form-container">

            <div className="campo">
                <input
                    placeholder='Nome'
                    name="nome"
                    value={nome}
                    type="text"
                    id='nome'
                    onChange={(e)=> setNome(e.target.value)}
                    required
                />
            </div>

            <div className="campo">
                <input
                    name="foto"
                    placeholder='Imagem'
                    value={photo}
                    type="text"
                    id='foto'
                    onChange={(e)=> setPhoto(e.target.value)}
                    required
                />
            </div>


            <div className="campo">
                <input
                    name="description"
                    placeholder='Descrição'
                    value={description}
                    id='fato'
                    onChange={(e)=> setDesc(e.target.value)}
                    type="text"
                />
            </div>

            <div className="campo">
                <input
                    name="price"
                    placeholder='Preço'
                    value={price}
                    id='fato'
                    onChange={(e)=> setPrice(e.target.value)}
                    type="text"
                />
            </div>

            <div className="btn-wrap">
                <button className='btn-form' type="submit">Cadastrar</button>
            </div>
        </form>
        </>
    );
}
export default CriarProdutosPage