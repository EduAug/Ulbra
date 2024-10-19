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
        <form onSubmit={handleSubmit} className="form-container">
        <div>
            <label>Nome</label>
            <input
                name="name"
                type="text"
                required
            />
        </div>
        <div>
            <label>Telefone</label>
            <input
                name="phone"
                type="tel"
                pattern='\d{5}-\d{4}'
                title='XXXXX-XXXX'
                required
            />
        </div>

        <div className="radio-cont">
            <label>É egresso?</label>
            <div className="radio-option">
                <label>Sim</label>
                <input
                    name="egresso"
                    type="radio"
                    value="true"
                    checked={isEgresso}
                    onChange={()=> setEgresso(true)}
                />
            </div>
            <div className="radio-option">
                <label>Não</label>
                <input
                    name="egresso"
                    type="radio"
                    value="false"
                    checked={!isEgresso}
                    onChange={()=> setEgresso(false)}
                />
            </div>
        </div>

        <div className="radio-cont">
            <label>Foi pago?</label>
            <div className="radio-option">
                <label>Sim</label>
                <input
                    name="pagamento"
                    type="radio"
                    value="true"
                    checked={isPago}
                    onChange={()=> setPago(true)}
                />
            </div>
            <div className="radio-option">
                <label>Não</label>
                <input
                    name="pagamento"
                    type="radio"
                    value="false"
                    checked={!isPago}
                    onChange={()=> setPago(false)}
                />
            </div>
        </div>

        <div>
            <label>Foto</label>
            <input
                name="photo"
                type="text"
                required
            />
        </div>

        <button className='btn-form' type="submit">Cadastrar</button>
    </form>
    );
}
export default FormQuestionario;