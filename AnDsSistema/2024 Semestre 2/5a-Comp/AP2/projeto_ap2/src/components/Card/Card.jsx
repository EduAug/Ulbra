import ProfilePic from '../ProfilePic'
import './Card.css'
function Card({pic, name, phone, isStudent, hasPaid}){
    return (
        <>
        <div className="container">
            <ProfilePic pic={ pic } alt={ name+' Picture'}/>
            <p className='cardP'>{name}</p>
            <p className='cardP'>{phone}</p>
            <p className='cardP'>{isStudent ? "Aluno" : "Egresso"}</p>
            <p className='cardP'>{hasPaid ? "Confirmado" : "Não confirmado"}</p>
        </div>
        </>
    );
}
export default Card;