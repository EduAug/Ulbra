function Navigator({navigate, text, block}){
    return(
        <>
            <button disabled={block} onClick={ navigate }>{ text }</button>
        </>
    );
}

export default Navigator;