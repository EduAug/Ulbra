import './ProductDetails.css';
import { useEffect, useState } from "react";
import { useParams } from "react-router-dom";

function ProductDetailsPage()
{
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
            {
                <div className="details-container">
                    <div className="item-det">
                        <h1 className="item-name">{product.name}</h1>
                        <h2 className="item-price">R${product.price}</h2>
                        <img className="item-image" src={product.photo_url} alt="image" />
                        <h3 className='item-price'>{product.description}</h3>
                    </div>
                </div>
            }
        </>
    );
}
export default ProductDetailsPage;