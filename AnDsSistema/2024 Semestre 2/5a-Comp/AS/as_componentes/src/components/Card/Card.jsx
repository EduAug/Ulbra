import './Card.css'

function Card({imagem, nome, desc, valor}){
    return(
        <>
        <div className="card-item-completo">
            <img className='card-imagem' src={ imagem } alt={ 'Imagem de '+nome } />
            <div className="card-container">
                <h1 className='card-nome'>{ nome }</h1>
                <hr />
                <h3 className='card-valor'>R$ { valor }</h3>
            </div>
        </div>
        </>
    );
}
export default Card;