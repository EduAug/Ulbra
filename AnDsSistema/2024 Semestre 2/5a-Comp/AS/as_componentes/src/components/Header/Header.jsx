import { NavLink } from "react-router-dom";
import HomePage from "../../pages/Home/Home";
import ProdutosPage from "../../pages/Produtos/Produtos";
import CriarProdutosPage from "../../pages/Criar/CriarProdutos";
import './Header.css'

function Header(){
    return(
        <>
        <header className="header-container">
            <div className="titulo">SEMESTRALha</div>

            <div className="navi">
                <ul className={(isActive) => isActive ? 'active' : 'inactive'}>
                    <li>
                        <NavLink to={'/'} element={<HomePage/>}>Home</NavLink>
                    </li>
                    <li>
                        <NavLink to={'/produtos'} element={<ProdutosPage/>}>Produtos</NavLink>
                    </li>
                    <li>
                        <NavLink to={'/cadastrar'} element={<CriarProdutosPage/>}>Adicionar</NavLink>
                    </li>
                </ul>
            </div>
        </header>
        </>
    );
}
export default Header;