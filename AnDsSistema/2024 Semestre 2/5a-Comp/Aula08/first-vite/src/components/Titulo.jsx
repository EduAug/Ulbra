function Titulo({title, hasTitulo}){
    return(
        <div>
        {
            hasTitulo ? <h1>{ title }</h1> : ""
        }
        </div>
    );
};
export default Titulo;