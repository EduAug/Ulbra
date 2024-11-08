import './Card.css';

function Card({nome, foto, fato}){
    return(
        <>
            <div className="card-container">
                <img className='card-imagem' src={ foto } alt={"Foto do " +nome} />
                <p className='card-nome'>{ nome }</p>
                <hr />
                <p className='card-fato'>{ fato }</p>
            </div>
        </>
    );
}
export default Card;