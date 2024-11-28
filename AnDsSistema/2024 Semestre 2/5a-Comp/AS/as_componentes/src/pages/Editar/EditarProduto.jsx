import { useEffect, useState } from "react";
import { useNavigate, useParams } from "react-router-dom";
import { useProduct } from "../../hooks/useProducts";

function EditarProdutoPage(){

    const navigation = useNavigate();
    const params = useParams();

    const [nome, setNome] = useState("");
    const [price, setPrice] = useState("");
    const [description, setDesc] = useState("");
    const [photo, setPhoto] = useState("");

    const [url, setUrl] = useState(null)
    const [product, loading] = useProduct(url)

    async function getProduct(){
        setUrl(`http://localhost:3001/products/${params.id}`)
    }

    async function editProduct(product){
        await fetch(`http://localhost:3001/products/${params.id}`, {
            method: "PUT",
            body: JSON.stringify(product)
        });
        navigation(`/produtos`);
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
        editProduct(productNovo);
    }
    
    useEffect(()=>{
        getProduct();

        if(product){
            setNome(product.name);
            setPrice(product.price);
            setDesc(product.description);
            setPhoto(product.photo_url);
        }
    },[product]);

    return(
        <>
        {loading && <p>Carregando...</p>}
        <h1  className="titulo-page">Editar produto já existente</h1>
        <form onSubmit={handleSubmit} className="form-container">
        <div className="campo">
                <input
                    placeholder='Nome*'
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
                    placeholder='Imagem*'
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
                    placeholder='Descrição*'
                    value={description}
                    id='fato'
                    onChange={(e)=> setDesc(e.target.value)}
                    type="text"
                />
            </div>

            <div className="campo">
                <input
                    name="price"
                    placeholder='Preço*'
                    value={price}
                    id='fato'
                    onChange={(e)=> setPrice(e.target.value)}
                    type="text"
                    required
                />
            </div>

            <div className="btn-wrap">
                <button className='btn-form' type="submit">Salvar Alterações</button>
            </div>
        </form>
        </>
    );
}
export default EditarProdutoPage;