import { NavLink } from 'react-router-dom';
import './Header.css';
import HomePage from '../../Pages/Home/HomePage';
import ContatoPage from '../../Pages/Contato/ContatoPage';
import PessoasPage from '../../Pages/Pessoas/Pessoas';
import ProductPage from '../../Pages/Products/Products';
import CadastrarPage from '../../Pages/Cadastrar/CadastrarPage';

function Header(){
    return(
        <>
        <header className="container">
            <div className="logo">FORMULÁRIO</div>

            <nav className='navigation'>
                <ul className={(isActive) => isActive ? 'active' : ''}>
                    <li>
                        <NavLink to={'/'} element={<HomePage/>}>Home</NavLink>
                    </li>
                    <li>
                        <NavLink to={'/contato'} element={<ContatoPage/>}>Contato</NavLink>
                    </li>
                    <li>
                        <NavLink to={'/cadastrar'} element={<CadastrarPage/>}>Cadastrar</NavLink>
                    </li>
                    <li>
                        <NavLink to={'/pessoas'} element={<PessoasPage/>}>Pessoas</NavLink>
                    </li>
                    <li>
                        <NavLink to={'/products'} element={<ProductPage/>}>Produtos</NavLink>
                    </li>
                </ul>
            </nav>
        </header>
        </>
    );
}
export default Header;