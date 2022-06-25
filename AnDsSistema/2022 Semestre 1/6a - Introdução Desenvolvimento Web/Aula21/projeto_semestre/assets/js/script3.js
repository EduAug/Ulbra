$(document).ready(() => {

    function clearCSS(){
        $('#menuHome').removeClass('active bg-dark text-light');
        $('#menuAbout').removeClass('active bg-dark text-light');
        $('#menuServices').removeClass('active bg-dark text-light');
        $('#menuContact').removeClass('active bg-dark text-light');
    }

    $('#imgServ').click(() => {
        clearCSS();
        $('#menuServices').addClass('active bg-dark text-light');
        $('section').load('assets/pages/services.html');
    });

    $('#imgServ1').click(() => {
        clearCSS();
        $('#menuServices').addClass('active bg-dark text-light');
        $('section').load('assets/pages/services.html');
    });

    $('#imgServ2').click(() => {
        clearCSS();
        $('#menuServices').addClass('active bg-dark text-light');
        $('section').load('assets/pages/services.html');
    });

})