import Formulario from "../../Components/Formulario/Formulario";
import { pessoas } from "../../Mock/mockdata";

function ContatoPage(){
    function falseAdicionarAoMock(e){
        pessoas.push(e);
        console.log(pessoas);
    } 

    return(
        <>
        <h1>Olá, novo contato</h1>
            <Formulario metodoParaAdicionarNaLista={falseAdicionarAoMock}/>
        </>
    );
}
export default ContatoPage;