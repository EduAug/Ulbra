import { useEffect, useState } from "react";
import { useNavigate, useParams } from "react-router-dom";
import { useProduct } from "../../hooks/useProducts";
import './DetalhesProduto.css';

function DetalhesProdutoPage(){
    const navigation = useNavigate();
    const params = useParams()

    const [url, setUrl] = useState(null)
    const [product, loading] = useProduct(url)

    async function getProduct(){
        setUrl(`http://localhost:3001/products/${params.id}`)
    }

    async function deleteProduct(productId){
        await fetch(`http://localhost:3001/products/${productId}`,
            {
                method: "DELETE"
            }
        );
        navigation(`/produtos`);
    }

    useEffect(()=>{
        getProduct();
    },[]);
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

                    <div className="container-operacoes">
                        <button className='edit-button' 
                        onClick={
                            () => {navigation(`/produtos/editar/${product.id}`)}
                        }
                        >Editar</button>

                        <button className='delete-button' 
                        onClick={
                            () => {deleteProduct(product.id)}
                        }
                        >Deletar</button>
                    </div>
                </div>
            </div>
        }
        </>
    );
}
export default DetalhesProdutoPage;