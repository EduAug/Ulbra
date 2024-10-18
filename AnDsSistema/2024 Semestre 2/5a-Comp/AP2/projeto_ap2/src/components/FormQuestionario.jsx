import { useState } from 'react'
import './FormQuestionario.css'

function FormQuestionario({ addPersonToPeople }){

    const [isEgresso, setEgresso]= useState(false)
    const [isPago, setPago]= useState(false)

    function handleSubmit(event){
        event.preventDefault()
        const formData= new FormData(event.target)
        const newPerson = {
            name: formData.get("name"),
            phone: formData.get("phone"),
            isStudent: isEgresso,
            hasPaid: isPago,
            pic: formData.get("photo")
        }
         
        addPersonToPeople(newPerson)
    }

    return(
        <form onSubmit={handleSubmit}>
            <div>
                <label>Nome</label>
                <input
                name="name"
                type="text"
                required/>
            </div>
            <div>
                <label>Telefone</label>
                <input
                name="phone"
                type="text"
                required/>
            </div>

            <div className="radio-cont-1">
                <label>É egresso?</label>
                <label>Sim</label>
                <input
                name="egresso"
                type="radio"
                value="true"
                checked={isEgresso}
                onChange={()=> setEgresso(true)}/>
                <label>Não</label>
                <input
                name="egresso"
                type="radio"
                value="false"
                checked={!isEgresso}
                onChange={()=> setEgresso(false)}/>
            </div>

            <div className="radio-cont-2">
                <label>Foi pago?</label>
                <label>Sim</label>
                <input
                name="pagamento"
                type="radio"
                value="true"
                checked={isPago}
                onChange={()=> setPago(true)}/>
                <label>Não</label>
                <input
                name="pagamento"
                type="radio"
                value="false"
                checked={!isPago}
                onChange={()=> setPago(false)}/>
            </div>

            <label>Foto</label>
            <div>
            <input
                name="photo"
                type="text"
                required/>
            </div>
            <button className='btn-form' type="submit">Cadastrar</button>
        </form>
    );
}
export default FormQuestionario;