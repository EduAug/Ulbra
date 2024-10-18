import { useEffect, useState } from 'react';

function LocalUser({ cep }){
    const [showDesc, setShowDesc]= useState(false)
    const [cepJson, setCepJson]= useState()
    const cepUser= `https://viacep.com.br/ws/${cep}/json/`;
    
    useEffect(()=> {
        async function getCep() {
            
            try{
                const resp= await fetch(cepUser)
                const json = await resp.json()
                setCepJson(json)
            }catch{
                console.log("Error fetching cep")
            }    
        }

        if(cepUser != null){
            getCep()
        }
    },[])

    return(
        <>
                <button className='btnLocal ms-5' onClick={()=> setShowDesc(!showDesc)}>
                    {showDesc ? "Ocultar Localização" : "Exibir Localização"}
                </button>{
                showDesc
                ?
                cepJson &&
                <div className="userData ms-5">
                    <h1>CEP: { cep }</h1> 
                    <h1>CIDADE: {cepJson.localidade}</h1>
                    <h1>BAIRRO: {cepJson.bairro}</h1>
                    <h1>AV/RUA: {cepJson.logradouro}</h1>
                    <h1>HORÁRIO: 21:30</h1>
                </div>
                :
                ""
            }
        </>
    );
}
export default LocalUser;