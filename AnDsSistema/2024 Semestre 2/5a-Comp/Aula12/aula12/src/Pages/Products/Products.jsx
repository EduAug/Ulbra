import './Products.css';
import { useState } from "react";
import { useEffect } from "react";
import { useNavigate } from "react-router-dom";

function ProductPage(){
    const navigation = useNavigate();
    const [product, setProduct] = useState([]);

    async function getAllProducts(){
        const response = await fetch(`http://localhost:3001/products/`);
        const timber = await response.json();
        setProduct(timber);
    }

    async function deleteProduct(productId){
        await fetch(`http://localhost:3001/products/${productId}`,
            {
                method: "DELETE"
            }
        );

        navigation(`/`);
    }

    useEffect(()=>{
        getAllProducts();
    }, []);

    return(
    <>
    <h1 className='titulo'>Produtos</h1>
    <div className="product-container">
        {
            product.map(
                (p) => {
                    return <div className='product-cards'>
                        <h1 className='product-name'>{p.name}</h1>
                        <button className='details-button' onClick={
                            () => {navigation(`/products/${p.id}`)}
                        }>Detalhes</button>
                        <button className='details-button' onClick={
                            () => {deleteProduct(p.id)}
                        }>Deletar</button>
                        <button className='details-button' onClick={
                            () => {navigation(`/products/editar/${p.id}`)}
                        }>Editar</button>
                    </div>
                }
            )
        }
    </div>
    </>
    );
}
export default ProductPage;