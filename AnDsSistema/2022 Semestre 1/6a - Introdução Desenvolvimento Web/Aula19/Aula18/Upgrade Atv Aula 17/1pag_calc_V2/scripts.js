function res(){
    var n1 = parseFloat(document.getElementById('val1').value);
    var n2 = parseFloat(document.getElementById('val2').value);
    var opera = document.getElementById('op').value;
    var conFin
    switch (opera){
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


    document.getElementById('conFin').innerHTML = "Resultado: " +conFin;
}