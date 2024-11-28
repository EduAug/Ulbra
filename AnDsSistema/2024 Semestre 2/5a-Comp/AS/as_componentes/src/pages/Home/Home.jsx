import './Home.css'

function HomePage(){
    return(
        <>
        <div className="the-great-container">
            <div className="home-container">
                <div className="news-content-container">
                    <div className="txt-cont">
                        <h1><a href="#">Sua loja periódica de móveis e tralhas!</a></h1>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam voluptates ducimus totam!</p>
                    </div>
                    <div className="img-cont-2">
                        <img src="http://picsum.photos/250" alt="250" />
                    </div>
                </div>
            </div>

            <div className="home-container">
                <div className="news-content-container">
                    <div className="txt-cont">
                        <h1><a href='#'>Grande reabertura</a></h1>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dignissimos voluptatibus ea soluta dolore ratione tenetur velit vitae. Sapiente voluptatum minima ipsum reprehenderit quis blanditiis enim iste at aspernatur, facilis quia, nulla eum eveniet officia?</p>
                    </div>
                    <div className="img-cont-2">
                        <img src="http://picsum.photos/251" alt="251" />
                    </div>
                </div>
            </div>
        </div>
        </>
    );
}
export default HomePage;