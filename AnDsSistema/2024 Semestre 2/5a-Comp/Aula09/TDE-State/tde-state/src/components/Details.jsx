import { useState } from "react";

function Details({description}){
    const [showDesc, setShowDesc]= useState(false)
    return(
        <>
            <button onClick={()=> setShowDesc(!showDesc)}>
                {
                    showDesc
                    ?
                    "Hide details"
                    :
                    "Show details"
                }
                </button>
            {
                showDesc 
                ?
                <p>
                    { description }
                </p>
                :
                ""
            }
        </>
    );
}

export default Details;