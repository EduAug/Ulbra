public class Main {
    public static void main(String[] args) {
        int dia = 16;
        int mes = 12;
        int ano = 2003;
        int anobiss = ano%4;

        boolean diaV=false;
        boolean mesV=false;

        switch(anobiss){
            case 0:
                System.out.println("Ano bissexto");
                switch(mes){
                    case 1:
                        mesV = true;
                        if(dia<=31){
                            diaV = true;
                        }else{
                            diaV = false;
                        }
                        break;
                    case 2:
                        mesV = true;
                        if(dia<=29){
                            diaV = true;
                        }else{
                            diaV = false;
                        }
                        break;
                    case 3:
                        mesV = true;
                        if(dia<=31){
                            diaV = true;
                        }else{
                            diaV = false;
                        }
                        break;
                    case 4:
                        mesV = true;
                        if(dia<=30){
                            diaV = true;
                        }else{
                            diaV = false;
                        }
                        break;
                    case 5:
                        mesV = true;
                        if(dia<=31){
                            diaV = true;
                        }else{
                            diaV = false;
                        }
                        break;
                    case 6:
                        mesV = true;
                        if(dia<=30){
                            diaV = true;
                        }else{
                            diaV = false;
                        }
                        break;
                    case 7:
                        mesV = true;
                        if(dia<=31){
                            diaV = true;
                        }else{
                            diaV = false;
                        }
                        break;
                    case 8:
                        mesV = true;
                        if(dia<=31){
                            diaV = true;
                        }else{
                            diaV = false;
                        }
                        break;
                    case 9:
                        mesV = true;
                        if(dia<=30){
                            diaV = true;
                        }else{
                            diaV = false;
                        }
                        break;
                    case 10:
                        mesV = true;
                        if(dia<=31){
                            diaV = true;
                        }else{
                            diaV = false;
                        }
                        break;
                    case 11:
                        mesV = true;
                        if(dia<=30){
                            diaV = true;
                        }else{
                            diaV = false;
                        }
                        break;
                    case 12:
                        mesV = true;
                        if(dia<=31){
                            diaV = true;
                        }else{
                            diaV = false;
                        }
                        break;
                    default:
                        mesV = false;
                        break;
                }
                break;
            default:
                System.out.println("Ano comum");
                switch(mes) {
                    case 1:
                        mesV = true;
                        if (dia <= 31) {
                            diaV = true;
                        } else {
                            diaV = false;
                        }
                        break;
                    case 2:
                        mesV = true;
                        if (dia <= 28) {
                            diaV = true;
                        } else {
                            diaV = false;
                        }
                        break;
                    case 3:
                        mesV = true;
                        if (dia <= 31) {
                            diaV = true;
                        } else {
                            diaV = false;
                        }
                        break;
                    case 4:
                        mesV = true;
                        if (dia <= 30) {
                            diaV = true;
                        } else {
                            diaV = false;
                        }
                        break;
                    case 5:
                        mesV = true;
                        if (dia <= 31) {
                            diaV = true;
                        } else {
                            diaV = false;
                        }
                        break;
                    case 6:
                        mesV = true;
                        if (dia <= 30) {
                            diaV = true;
                        } else {
                            diaV = false;
                        }
                        break;
                    case 7:
                        mesV = true;
                        if (dia <= 31) {
                            diaV = true;
                        } else {
                            diaV = false;
                        }
                        break;
                    case 8:
                        mesV = true;
                        if (dia <= 31) {
                            diaV = true;
                        } else {
                            diaV = false;
                        }
                        break;
                    case 9:
                        mesV = true;
                        if (dia <= 30) {
                            diaV = true;
                        } else {
                            diaV = false;
                        }
                        break;
                    case 10:
                        mesV = true;
                        if (dia <= 31) {
                            diaV = true;
                        } else {
                            diaV = false;
                        }
                        break;
                    case 11:
                        mesV = true;
                        if (dia <= 30) {
                            diaV = true;
                        } else {
                            diaV = false;
                        }
                        break;
                    case 12:
                        mesV = true;
                        if (dia <= 31) {
                            diaV = true;
                        } else {
                            diaV = false;
                        }
                        break;
                    default:
                        mesV = false;
                        break;
            }
                break;
        }

        if(diaV==true && mesV==true){
            System.out.println("Data válida");
        }else{
            if(mesV==false) {
                System.out.println("Mês inválido");
            }else{
                System.out.println("Dia inválido");
            }
        }
        //Dava pra ter feito em menos de 100 linhas? Com certeza, mas qual a graça nisso
    }
}