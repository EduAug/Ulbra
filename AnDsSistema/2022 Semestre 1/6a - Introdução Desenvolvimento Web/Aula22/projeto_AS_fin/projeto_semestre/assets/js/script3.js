$(document).ready(()=>{

    $("#envLimp").click(()=>{
        $('#subNews').val("");
        alert("You'll receive updates through your e-mail!");
        console.log("No momento, não há inscrição via e-mail");
    });

    $("#envLimp2").click(()=>{
        $('#senMess').val("");
        alert("Thanks! We'll make sure to read all of your messages!");
        console.log("Mensagem deletada");
    });

})