import { useEffect, useState } from "react";
import { useNavigate, useParams } from "react-router-dom";

function EditarPage(){
    
    const navigation = useNavigate();

    const params = useParams();
    
    const [nomeProd, setNome] = useState();
    const [foto, setFoto] = useState();
    const [price, setPrice] = useState();
    const [description, setDescription] = useState();

    async function getProduct(){
        const response = await fetch(`http://localhost:3001/products/${params.id}`);
        const product = await response.json();
        
        setNome(product.name);
        setFoto(product.photo_url);
        setDescription(product.description);
        setPrice(product.price);
    }

    useEffect(()=>{
        getProduct();
    },[]);

    async function editProduct(product){
        await fetch(`http://localhost:3001/products/${params.id}`, {
            method: "PUT",
            body: JSON.stringify(product)
        });

        navigation("/products");
    }


    function handleSubmit(event){
        event.preventDefault();
        const productNovo = 
        {
            name: nomeProd, 
            price: price, 
            description: description, 
            photo_url: foto
        }
        setNome('');
        setDescription('');
        setPrice('');
        setFoto('');

        editProduct(productNovo);
    }


    return(
    <>
        <form onSubmit={handleSubmit} className="form-container">
        <div className='questao'>
            <label>Nome</label>
            <div className="campo">
                <input
                    name="nome"
                    value={nomeProd}
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
                    value={description}
                    id='fato'
                    onChange={(e)=> setDescription(e.target.value)}
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
            <button className='btn-form' type="submit">Editar</button>
        </div>
    </form>
    </>
    );
}
export default EditarPage;