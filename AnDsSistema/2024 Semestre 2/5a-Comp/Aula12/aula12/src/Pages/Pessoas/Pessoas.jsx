import Card from "../../Components/Card/Card";
import './Pessoas.css';
import { pessoas } from "../../Mock/mockdata";

function PessoasPage(){

    return(
        <>
        <h1>Seus contatos</h1>
        <div className="center-container">
            {
                pessoas.map((item)=> (
                    <Card foto={item.foto} fato={item.fato} nome={item.nome} />
                ))
            }
        </div>
        </>
    );
}
export default PessoasPage;