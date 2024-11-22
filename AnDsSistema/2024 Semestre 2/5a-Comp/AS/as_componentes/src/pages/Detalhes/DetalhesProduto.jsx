import { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import './DetalhesProduto.css';

function DetalhesProdutoPage(){
    const params = useParams();
    const [product, setProduct] = useState({});

    async function getProduct(){
        const response = await fetch(`http://localhost:3001/products/${params.id}`);
        const timber = await response.json();
        setProduct(timber);
    }

    useEffect(()=>{
        getProduct();
    });
    return(
        <>
        <div className="container-detalhes">
            <div className="container-image-detalhes">
                <img className="item-imagem" src={product.photo_url} alt="image" />
            </div>

            <div className="container-dados-detalhes">
                <h1 className="item-name">{product.name}</h1>
                <h1 className='item-desc'>{product.description}</h1>
                <hr />
                <h1 className="item-price">R${product.price}</h1>
            </div>
        </div>
        </>
    );
}
export default DetalhesProdutoPage;