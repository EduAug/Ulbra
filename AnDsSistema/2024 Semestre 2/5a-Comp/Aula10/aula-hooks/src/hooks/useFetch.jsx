import { useEffect, useState } from "react";

export function useFetch(url){
    const [cep, setData]= useState("")
    const [loading, setLoading]= useState(false)


    useEffect(()=> {
        async function getCep() {
            setData("")
            setLoading(true)
            let resp;
            try{
                resp= await fetch(url)
                const cepJson= await resp.json()
                setData(cepJson)
                setLoading(false)
                console.log("Done loading")
            }catch{
                console.error("Erro")
                setLoading(false)
                console.log("Done loading")
            }    
        }

        if(url != null){
            getCep()
        }
    }, [url])
    return [cep, loading]
}