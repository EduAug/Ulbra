import { useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";
import Card from "../../components/Card/Card";
import './Produtos.css';

function ProdutosPage(){
    const navigation = useNavigate();
    const [product, setProduct] = useState([]);

    async function pegarTodos(){
        const response = await fetch(`http://localhost:3001/products/`);
        const json = await response.json();
        setProduct(json);
        console.log(product);
    }

    async function deletar(id){
        await fetch(`http://localhost:3001/products/${id}`,
            {
                method: "DELETE"
            }
        );

        navigation(`/`);
    }

    useEffect(()=>{
        pegarTodos();
    },[]);

    return(
        <>
        <h1 className="titulo-page">Móveis e tralhas!</h1>
        <div className="tralhas-container">
            {
                product.map(
                    (p) => {
                        return <div className="wrap-card" onClick={
                                () => {navigation(`/produtos/${p.id}`)}
                            }>
                            <Card
                            imagem={ p.photo_url }
                            nome={ p.name }
                            desc={ p.description }
                            valor={ p.price }
                            />
                        </div>
                    }
                )
            }
        </div>
        </>
    );
}
export default ProdutosPage