function calcConta(){
    var qtdKwh = parseFloat(document.getElementById('qtdKwhs').value);
    var prcKwh = parseFloat(document.getElementById('valKwhs').value);
    var totKwh = qtdKwh * prcKwh;

    if(qtdKwh > 100 && qtdKwh <= 200){
        totKwh = totKwh * 1.25;
    } else if(qtdKwh > 200){
        totKwh = totKwh * 1.5;
    }

    document.getElementById('valFina').innerHTML = 'A energia gasta totaliza R$' +totKwh;
}