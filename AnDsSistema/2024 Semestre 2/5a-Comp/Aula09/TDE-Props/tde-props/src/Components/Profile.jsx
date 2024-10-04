import Avatar from "./Avatar";
import './Profile.css'

function Profile({name, image, profession, awardsAmount, awards, discovery}){
    return(
        <div className="profileBorder">
            <h2>{ name }</h2>
            <Avatar imageSource={ image }/>
            <ul>
                <li>
                    <b>Profession:</b> { profession }
                </li>
                <li>
                    <b>Awards: { awardsAmount }</b> { awards }
                </li>
                <li>
                    <b>Discovered:</b> { discovery }
                </li>
            </ul>
        </div>
    );
}

export default Profile