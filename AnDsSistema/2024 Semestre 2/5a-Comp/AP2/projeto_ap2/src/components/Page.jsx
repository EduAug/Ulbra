import Card from './Card/Card'
import LocalUser from './LocalUser/LocalUser';
import '../index.css'

function Page({name, cep, evento, eventoFoto}){


    const teste= {
        pic: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Placeholder_view_vector.svg/1200px-Placeholder_view_vector.svg.png",
        name: "Ninguém",
        phone: "51912345678",
        isStudent: false,
        hasPaid: true
    }
    const outro= {
        pic: "https://sites.create-cdn.net/siteimages/5/0/3/50308/20/3/7/20375714/1000x750.jpg?1707834120",
        name: "Outro",
        phone: "51912345678",
        isStudent: true,
        hasPaid: false
    }
    
    return(
        <>
        <header>
            <img className='picEvento' src={ eventoFoto } alt="Foto evento" />

            <h1 className='h1Page text-center'>{ evento }</h1>
        </header>
        <div className="container-fluid">
        
        <h1 className='h1Page'>Seja bem vindo, {name}</h1>
        <div className="row">
            <div className="col-md-6">
                <LocalUser cep={"90460210"}/>
            </div>
            <div className="col-md-6"></div>
        </div>
        
            <div className="row">
                <div className="col-md-4">
                    <div className="row">
                        <div className="col-md-6">
                            <Card pic={ teste.pic } name={ teste.name } phone={ teste.phone } isStudent={ teste.isStudent } hasPaid={ teste.hasPaid }/>
                        </div>
                        <div className="col-md-6">
                            <Card pic={ outro.pic } name={ outro.name } phone={ outro.phone } isStudent={ outro.isStudent } hasPaid={ outro.hasPaid }/>
                        </div>
                        <div className="col-md-6">
                            <Card pic={ teste.pic } name={ teste.name } phone={ teste.phone } isStudent={ teste.isStudent } hasPaid={ teste.hasPaid }/>
                        </div>
                        <div className="col-md-6">
                            <Card pic={ outro.pic } name={ outro.name } phone={ outro.phone } isStudent={ outro.isStudent } hasPaid={ outro.hasPaid }/>
                        </div>
                    </div>
                </div>

                <div className="col-md-3"></div>

                <div className="col-md-5">
                    <p>Paramegiana</p>
                </div>
            </div>
        </div>
        </>
    );
}

export default Page;