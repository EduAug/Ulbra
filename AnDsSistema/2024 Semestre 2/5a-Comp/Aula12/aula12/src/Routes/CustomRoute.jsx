import Header from '../Components/Header/Header'
import HomePage from '../Pages/Home/HomePage';
import ContatoPage from '../Pages/Contato/ContatoPage';
import ErrorPage from '../Pages/ErrorPage/ErrorPage';
import { BrowserRouter, Route, Routes } from 'react-router-dom';
import PessoasPage from '../Pages/Pessoas/Pessoas';
import ProductPage from '../Pages/Products/Products';
import ProductDetailsPage from '../Pages/ProductDetails/ProductDetails.jsx';
import EditarPage from '../Pages/Editar/Editar.jsx';
import CadastrarPage from '../Pages/Cadastrar/CadastrarPage.jsx';

function CustomRoute(){
    return(
        <>
        <BrowserRouter>
        <Header/>
          <Routes>
            <Route path='/' element={<HomePage />}/>
            <Route path='/contato' element={<ContatoPage />}/>
            <Route path='/cadastrar' element={<CadastrarPage />}/>
            <Route path='/pessoas' element={<PessoasPage/>}/>
            <Route path='/products' element={<ProductPage/>}/>
            <Route path='/products/:id' element={<ProductDetailsPage/>}/>
            <Route path='/products/editar/:id' element={<EditarPage/>}/>
            <Route path='*' element={<ErrorPage />}/>
          </Routes>
        </BrowserRouter>
        </>
    );
}
export default CustomRoute;