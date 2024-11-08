import { NavLink } from 'react-router-dom';
import './Header.css';
import HomePage from '../../Pages/Home/HomePage';
import ContatoPage from '../../Pages/Contato/ContatoPage';
import SobrePage from '../../Pages/Sobre/SobrePage';
import PessoasPage from '../../Pages/Pessoas/Pessoas';

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
                        <NavLink to={'/sobre'} element={<SobrePage/>}>Sobre</NavLink>
                    </li>
                    <li>
                        <NavLink to={'/pessoas'} element={<PessoasPage/>}>Pessoas</NavLink>
                    </li>
                </ul>
            </nav>
        </header>
        </>
    );
}
export default Header;