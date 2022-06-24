function somm(){
    var n1 = parseFloat(document.getElementById('n1').value);
    var n2 = parseFloat(document.getElementById('n2').value);
    var somFin = n1+n2;
    document.getElementById('resSoma').innerHTML = "A soma é: " +somFin;
}