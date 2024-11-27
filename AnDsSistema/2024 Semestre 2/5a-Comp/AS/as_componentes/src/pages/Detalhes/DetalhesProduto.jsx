import { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import { useProduct } from "../../hooks/useProducts";
import './DetalhesProduto.css';

function DetalhesProdutoPage(){
    const params = useParams()

    const [url, setUrl] = useState(null)
    const [product, loading] = useProduct(url)

    async function getProduct(){
        setUrl(`http://localhost:3001/products/${params.id}`);
    }

    useEffect(()=>{
        getProduct();
    });
    return(
        <>
        {loading && <p>Carregando...</p>}
        {
            product &&
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
        }
        </>
    );
}
export default DetalhesProdutoPage;