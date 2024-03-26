class CharGenerator(val valMin : Int, val valMax : Int){
    fun generateNewCharacter() : Char{
        return (valMin..valMax).random().toChar();
    }
}

class Pessoa(val nome : String, val idade : Int){
    fun caminhar() : Unit{
        println("*$nome caminha*")
    }
    fun falar() : Unit{
        println("Sou $nome e tenho $idade anos.")
    }
}

sealed class Result{
    class Sucesso : Result(){
        override fun displayMsg() = println("Tudo certo")
    };
    class Error : Result(){
        override fun displayMsg() = println("Deu bigode")
    };
    class Loading : Result(){
        override fun displayMsg() = println("Espera...")
    };
    
    abstract fun displayMsg()
}

data class Pessoa2(val nome : String, val idade : Int, val profissao : String?, val cpf : String){}

fun main() {
    val charObj = CharGenerator(valMin=65,valMax=144)
    val randomWord = mutableListOf<Char>()
    for(i in 1..6){
        randomWord.add(charObj.generateNewCharacter())
    }
    println(randomWord)
    
    val persObj = Pessoa(nome="Lillah", idade=27)
    persObj.caminhar()
    persObj.falar()
    
    val errObj = Result.Error()
    val sucObj = Result.Sucesso()
    val loaObj = Result.Loading()
    sucObj.displayMsg()
    loaObj.displayMsg()
    errObj.displayMsg()
    
    val persObjThe2nd = Pessoa2(nome="Rudimar",idade=78,profissao=null,cpf="01234567890")
    val novoRudimar = persObjThe2nd.copy(nome="Rudimar da Silvasauro")
    println(persObjThe2nd.nome)
    println(novoRudimar.nome)
}