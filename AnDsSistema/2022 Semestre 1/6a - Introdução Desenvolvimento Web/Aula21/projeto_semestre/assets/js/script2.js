$(document).ready(() => {

    $('#respo').click(function () {
        alert('Mensagem enviada!');
        $('section').load('assets/pages/contact.html');
    });

})