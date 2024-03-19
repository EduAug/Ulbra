// 1- Media Aritmetica
fun getMediaAritmetica(inputList : MutableList<Int>) : Double{
    var returnableVal : Int = 0
    for(i in inputList){
        returnableVal += i
    }
    return (returnableVal.toDouble() / inputList.size.toDouble())
}

// 2- Fitrar pares
fun getParesDaLista(inputList : MutableList<Int>) : List<Int> = inputList.filter{it % 2 == 0}

// 3- Remover duplicados
fun removeInteirosDuplicados(inputList : MutableList<Int>) : List<Int> = inputList.distinct()

// 4- Último elemento ímpar
fun getUltimoImpar(inputList : MutableList<Int>) : Int {
    var listaImpar = inputList.filter{it % 2 != 0}
    return listaImpar.last()
}

// 5- Lista toUpper
fun getListaMaiuscula(inputList : MutableList<String>) : List<String> {return inputList.map{it.uppercase()}}

// 6- Função de extensão para Strings virarem maiúsculas
fun String.up() : String {return this.uppercase()}

// 7- Função de extensão para Strings adicionarem "R$" aos números
fun String.toMoney() : String{return "R$ $this"}

// 7.1 - Upgrade na anterior, achando números dentro de Strings
fun String.toMoneyFinder() : String{
    return this.replace(Regex("[0-9]+")) {it -> "R$${it.value}"} 
}
// EXPLICAÇÃO FUNÇÃO:
// O Regex ali é usado para encontrar valores númericos dentro
// da String, e o '+' seria para "elementos precedentes", no caso
// para que "100" virasse "R$100" e não "R$1R$0R$0". Eu acho.
// O replace, então, recebe esse "parâmetro", o número, do regex
// e passa para uma função lambda, onde dado valor numérico
// que fora encontrado, é substituído pelo próprio valor
// porém com "R$" adicionado antes dele

// Não vou nem mentir, Regex original (\\d+) by ChatGPT

fun main(){
    var lista1 = mutableListOf(1,2,3,4,5,6)
    println(getMediaAritmetica(lista1))
    
    var lista2 = mutableListOf(1,3,5,8,6,7,9,0)
    println(getParesDaLista(lista2))

    var lista3 = mutableListOf(1,2,7,3,4,5,6,1,7,2,3)
    println(removeInteirosDuplicados(lista3))
    
    var lista4 = mutableListOf(0,2,3,4,6,9,8,7)
    println(getUltimoImpar(lista4))
    
    var lista5 = mutableListOf("minum","joe","outra", "ultima minuscula")
    println(getListaMaiuscula(lista5))
    
    val item6 : String = "string toda em minusculo"
    print(item6.up())
    
    val item7 : String = "500"
    println(item7.toMoney())

    val item8 : String = "O total da compra foi 30, ou três vezes de 10"
    println(item8.toMoneyFinder())
}
