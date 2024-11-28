import { BrowserRouter, Route, Routes } from "react-router-dom";
import HomePage from "../pages/Home/Home";
import ProdutosPage from "../pages/Produtos/Produtos";
import CriarProdutosPage from "../pages/Criar/CriarProdutos";
import Footer from "../components/Footer/Footer";
import Header from "../components/Header/Header";
import ErrorPage from "../pages/Error/Error";
import DetalhesProdutoPage from "../pages/Detalhes/DetalhesProduto";
import EditarProdutoPage from "../pages/Editar/EditarProduto";

function CustomRoute(){
    return(
        <>
            <BrowserRouter>
                <Header/>
                <Routes>
                    <Route path="/" element={<HomePage/>} />
                    <Route path="/produtos" element={<ProdutosPage/>} />
                    <Route path="/criar-produto" element={<CriarProdutosPage/>} />
                    <Route path="/produtos/:id" element={<DetalhesProdutoPage/>} />
                    <Route path="/produtos/editar/:id" element={<EditarProdutoPage/>} />
                    <Route path="*" element={<ErrorPage/>}/>
                </Routes>
                <Footer/>
            </BrowserRouter>
        </>
    );
}
export default CustomRoute;