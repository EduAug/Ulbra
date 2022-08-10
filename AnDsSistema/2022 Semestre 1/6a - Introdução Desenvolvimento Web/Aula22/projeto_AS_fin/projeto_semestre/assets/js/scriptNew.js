$(document).ready(()=>{

    function cleanse(){
        $("#news1").removeClass("bg-custom4 rounded");
        $("#news2").removeClass("bg-custom4 rounded");
        $("#news3").removeClass("bg-custom4 rounded");
        $("#news4").removeClass("bg-custom4 rounded");
    }

    function bracket1(){
        $("#news2").removeClass("border-end border-2 border-light");
        $("#news3").removeClass("border-end border-2 border-light");
        $("#news4").removeClass("border-end border-2 border-light");
    }
    function bracket2(){
        $("#news1").removeClass("border-end border-2 border-light");
        $("#news3").removeClass("border-end border-2 border-light");
        $("#news4").removeClass("border-end border-2 border-light");
    }
    function bracket3(){
        $("#news1").removeClass("border-end border-2 border-light");
        $("#news2").removeClass("border-end border-2 border-light");
        $("#news4").removeClass("border-end border-2 border-light");
    }
    function bracket4(){
        $("#news1").removeClass("border-end border-2 border-light");
        $("#news2").removeClass("border-end border-2 border-light");
        $("#news3").removeClass("border-end border-2 border-light");
    }

    $("#highlight1").click(()=>{
        cleanse();
        bracket1();
        $("#news1").addClass("bg-custom4 rounded");
        setTimeout(()=>{
            cleanse();
        },1500);
        $("#news1").addClass("border-end border-2 border-light");
    });

    $("#highlight2").click(()=>{
        cleanse();
        bracket2();
        $("#news2").addClass("bg-custom4 rounded");
        setTimeout(()=>{
            cleanse();
        },1500);
        $("#news2").addClass("border-end border-2 border-light");
    });

    $("#highlight3").click(()=>{
        cleanse();
        bracket3();
        $("#news3").addClass("bg-custom4 rounded");
        setTimeout(()=>{
            cleanse();
        },1500);
        $("#news3").addClass("border-end border-2 border-light");
    });

    $("#highlight4").click(()=>{
        cleanse();
        bracket4();
        $("#news4").addClass("bg-custom4 rounded");
        setTimeout(()=>{
            cleanse();
        },1500);
        $("#news4").addClass("border-end border-2 border-light");
    });

    $("#conHide").click(function(){
        $("#conHide").hide();
    })

});