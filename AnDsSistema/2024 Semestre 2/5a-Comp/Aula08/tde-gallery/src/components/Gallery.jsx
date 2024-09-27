import Profile from "./Profile";

function Gallery({title}){
    return(
        <>
            <h1>{ title }</h1>
            <Profile imgsource={"https://i.imgur.com/MK3eW3As.jpg"}/>
            <Profile imgsource={"https://i.imgur.com/MK3eW3As.jpg"}/>
            <Profile imgsource={"https://i.imgur.com/MK3eW3As.jpg"}/>
        </>
    );
};
export default Gallery;