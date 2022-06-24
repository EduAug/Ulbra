$(document).ready(function () {

    $('section').load('calculadorasHTML/home.html');
    $('#menuHome').addClass('active bg-dark text-light');

    function removeCss() {
        $('#menuCalc').removeClass('active bg-dark text-light');
        $('#menuHome').removeClass('active bg-dark text-light');
        $('#menuLuz').removeClass('active bg-dark text-light');
        $('#menuMai').removeClass('active bg-dark text-light');

    }

    $('#menuHome').click(function () {
        removeCss();
        $('#menuHome').addClass('active bg-dark text-light');
        $('section').load('calculadorasHTML/home.html');
    })

    $('#menuCalc').click(function () {
        removeCss();
        $('#menuCalc').addClass('active bg-dark text-light');
        $('section').load('calculadorasHTML/calculadora.html', function () {

            $('#calcular').click(function () {
                var n1 = parseFloat($('#val1').val());
                var n2 = parseFloat($('#val2').val());
                var opera = $('#op').val();

                var conFin
                switch (opera) {
                    case '-':

                        conFin = (n1 - n2);

                        break;

                    case '+':

                        conFin = (n1 + n2);

                        break;

                    case '*':

                        conFin = (n1 * n2);

                        break;

                    case '/':

                        conFin = (n1 / n2);

                        break;

                    default:
                        break;
                }


                $('#conFin').html("Resultado: " + conFin);
            })

        });
    })

    $('#menuLuz').click(function () {
        removeCss();
        $('#menuLuz').addClass('active bg-dark text-light');
        $('section').load('calculadorasHTML/contaLuz.html', function () {
            $('#calcConta').click(function () {

                var qtdKwh = parseFloat($('#qtdKwhs').val());
                var prcKwh = parseFloat($('#valKwhs').val());
                var totKwh = qtdKwh * prcKwh;

                if (qtdKwh > 100 && qtdKwh <= 200) {
                    totKwh = totKwh * 1.25;
                } else if (qtdKwh > 200) {
                    totKwh = totKwh * 1.5;
                }

                $('#valFina').html('A energia gasta totaliza R$' + totKwh);
            })
        });
    });

    $('#menuMai').click(function () {
        removeCss();
        $('#menuMai').addClass('active bg-dark text-light');
        $('section').load('calculadorasHTML/numeroMaior.html', function () {
            $('#verif').click(function () {
                var numInser = $('#numInser').val();
                numInser = numInser.split(',');
                var numMaio = 0;

                for (var i = 0; i < numInser.length; i++) {
                    var valAt = parseFloat(numInser[i]);
                    if (valAt > numMaio) {
                        numMaio = valAt;
                    }
                }

                $('#maiNum').html('O maior número é: ' + numMaio);
            })

        });
    })

    $('#menuIda').click(function () {
        removeCss();
        $('#menuIda').addClass('active bg-dark text-light');
        $('section').load('calculadorasHTML/home.html');
    })
});
