import Header from '../Components/Header/Header'
import HomePage from '../Pages/Home/HomePage';
import SobrePage from '../Pages/Sobre/SobrePage';
import ContatoPage from '../Pages/Contato/ContatoPage';
import ErrorPage from '../Pages/ErrorPage/ErrorPage';
import { BrowserRouter, Route, Routes } from 'react-router-dom';

function CustomRoute(){
    return(
        <>
        <BrowserRouter>
        <Header/>
          <Routes>
            <Route path='/' element={<HomePage />}/>
            <Route path='/contato' element={<ContatoPage />}/>
            <Route path='/sobre' element={<SobrePage />}/>
            <Route path='*' element={<ErrorPage />}/>
          </Routes>
        </BrowserRouter>
        </>
    );
}
export default CustomRoute;