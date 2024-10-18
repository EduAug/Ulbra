import './ProfilePic.css'

function ProfilePic({pic, alt}){
    return (
        <>
            <img className="imgCard" src={ pic } alt={ alt } />
        </>
    );
}
export default ProfilePic