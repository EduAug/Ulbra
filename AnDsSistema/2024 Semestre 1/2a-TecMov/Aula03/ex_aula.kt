fun main(){
    val lista = listOf("Kotlin", null);
    for(i in lista){
        i?.let{println(i)}
    }

    var lista2 = listOf(1,2,3,4,5)
    var listaPar = lista2.filter{it % 2 == 0}

    fun String.addQuotes() = "``$this``"
    val unQuoted = "Just some words"
    val quotedUnQuoted = unQuoted.addQuotes()
    
    fun String.formatMoney(): String {
        var result : String = ""
        if(this.contains(".")){
            result = this.replace(".",",")
        }
        return "R$ $result"
    }

    println(unQuoted)
    println(quotedUnQuoted)

    println("50.00".formatMoney())
}