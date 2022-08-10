$(document).ready(()=>{

    $('section').load('assets/pages/home.html');


    function clearCSS(){
        $('#menuHome').removeClass('active border-bottom border-white border-4');
        $('#menuNews').removeClass('active border-bottom border-white border-4');
        $('#menuStore').removeClass('active border-bottom border-white border-4');
        $('#menuShows').removeClass('active border-bottom border-white border-4');
        $('#menuListen').removeClass('active border-bottom border-white border-4');
    }

    $('#menuHome').click(()=>{
        clearCSS()
        $('section').load('assets/pages/home.html');
    })

    $('#menuNews').click(()=>{
        clearCSS()
        $('section').load('assets/pages/news.html');
        $('#menuNews').addClass('active border-bottom border-white border-4');
    })

    $('#menuStore').click(()=>{
        clearCSS()
        $('section').load('assets/pages/store.html');
        $('#menuStore').addClass('active border-bottom border-white border-4');
    })
    
    $('#menuShows').click(()=>{
        clearCSS()
        $('section').load('assets/pages/shows.html');
        $('#menuShows').addClass('active border-bottom border-white border-4');
    })

    $('#menuListen').click(()=>{
        clearCSS()
        $('section').load('assets/pages/music.html');
        $('#menuListen').addClass('active border-bottom border-white border-4');
    })

})