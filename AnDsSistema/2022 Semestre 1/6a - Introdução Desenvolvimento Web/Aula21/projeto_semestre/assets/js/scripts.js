$(document).ready(()=>{

    $('section').load('assets/pages/home.html');
    $('#menuHome').addClass('active bg-dark text-light');


    function clearCSS(){
        $('#menuHome').removeClass('active bg-dark text-light');
        $('#menuAbout').removeClass('active bg-dark text-light');
        $('#menuServices').removeClass('active bg-dark text-light');
        $('#menuContact').removeClass('active bg-dark text-light');
    }

    $('#menuHome').click(()=>{
        clearCSS()
        $('#menuHome').addClass('active bg-dark text-light');
        $('section').load('assets/pages/home.html');
    })

    $('#menuAbout').click(()=>{
        clearCSS()
        $('#menuAbout').addClass('active bg-dark text-light');
        $('section').load('assets/pages/about.html');
    })

    $('#menuServices').click(()=>{
        clearCSS()
        $('#menuServices').addClass('active bg-dark text-light');
        $('section').load('assets/pages/services.html');
    })
    
    $('#menuContact').click(()=>{
        clearCSS()
        $('#menuContact').addClass('active bg-dark text-light');
        $('section').load('assets/pages/contact.html');
    })

})