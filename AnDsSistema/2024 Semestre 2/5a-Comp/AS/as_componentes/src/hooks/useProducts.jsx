import { useEffect, useState } from "react";

export function useProduct(url){

    const [loading, setLoading] = useState(false);
    const [prod, setProd] = useState([]);

    useEffect(() => {
        async function getProduct() {
            setProd([])
            setLoading(true)

            let retorno;

            try{
                retorno = await fetch(url)
                const produtoJson = await retorno.json()

                setProd(produtoJson)
            }catch (ex){
                console.error("Erro:",ex)
            }finally{
                setLoading(false)
            }
        }

        if(url != null){
            getProduct()
        }
    }, [url])
    return [prod, loading]
}