import './CepCard.css'
import { useState } from "react";
import { useFetch } from "../hooks/useFetch";

function CepCard(){
    const [urlCep, setUrlCep]= useState(null)
    const [dadosCep, loading]= useFetch(urlCep)

    function handleSubmit(event){
        event.preventDefault()
        const formData= new FormData(event.target)
        const cepFinal= formData.get("cep")
        setUrlCep(`https://viacep.com.br/ws/${cepFinal}/json/`)
    }

    return(
        <>
            <form onSubmit={handleSubmit}>
                <label>CEP:</label>
                <input
                name="cep"
                type="text"
                maxLength={8}/>
                <button className='btn-cep' type="submit">Pesquisar</button>
            </form>
            {loading && <p>Carregando...</p>}
            {dadosCep && <p>{dadosCep.cep} - {dadosCep.localidade}/{dadosCep.uf}</p>}
        </>
    );
}

export default CepCard;