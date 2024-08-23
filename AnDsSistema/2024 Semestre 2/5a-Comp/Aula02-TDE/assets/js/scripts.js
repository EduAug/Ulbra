const button= document.querySelector("button");

function showMoreImages(){
    const showMore= document.getElementById("section2");
    showMore.style.display= "block";
    button.style.display= "none";
}

button.addEventListener('click', showMoreImages);