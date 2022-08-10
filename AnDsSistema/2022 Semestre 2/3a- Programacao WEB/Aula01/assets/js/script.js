$(document).ready(()=>{

    function removeCls(){
        $('#menHo').removeClass('bg-primary text-white');
        $('#menAb').removeClass('bg-primary text-white');
        $('#menPr').removeClass('bg-primary text-white');
        $('#menCo').removeClass('bg-primary text-white');
    }

    $('section').load('assets/pages/home.html');
    $('#menHo').addClass('bg-primary text-white');

    $('#menHo').click(()=>{
        removeCls()
        $('section').load('assets/pages/home.html');
        $('#menHo').addClass('bg-primary text-white');
    });
    $('#menAb').click(()=>{
        removeCls()
        $('section').load('assets/pages/about.html');
        $('#menAb').addClass('bg-primary text-white');
    });
    $('#menPr').click(()=>{
        removeCls()
        $('section').load('assets/pages/products.html');
        $('#menPr').addClass('bg-primary text-white');
    });
    $('#menCo').click(()=>{
        removeCls()
        $('section').load('assets/pages/contact.html');
        $('#menCo').addClass('bg-primary text-white');
    });


});