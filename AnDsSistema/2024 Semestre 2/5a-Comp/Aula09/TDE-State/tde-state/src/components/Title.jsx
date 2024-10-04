function Title({name, artist, index}){
    return(
        <>
            <h1>{ name } by { artist }</h1>
            <h5>{ index } of 12</h5>
        </>
    );
}

export default Title;