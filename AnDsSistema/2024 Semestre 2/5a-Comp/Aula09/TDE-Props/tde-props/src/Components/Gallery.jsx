import Profile from "./Profile";

function Gallery({title}){
    
    return(
        <>
            <h2>{ title }</h2>
            <Profile
                name= "Marie Skłodowska-Curie"
                image= "https://i.imgur.com/szV5sdG.jpeg"
                profession= "Physicist and chemist"
                awardsAmount={4}
                awards= "(Nobel prize in Physics, Nobel prize in Chemistry, Davy Medal, Matteuci Award)"
                discovery= "Polonium (element)"
            />
            <Profile
                name= "Katsuko Saruhashi"
                image= "https://i.imgur.com/YfeOqp2.jpeg"
                profession= "Geochemist"
                awardsAmount={2}
                awards= "(Miyake prize for geochemistry, Tanaka prize)"
                discovery= "A method for measuring charbon monoxide in seawater"
            />
        </>
    );
}

export default Gallery