fun getAvg(values : MutableList<Int>):Int{
    if(values.isEmpty()){
      print("Lista vazia");
      return 0;
    }else if(values == null){
      print("Lista... nula?");
      return 0;
    }
    var totalSum : Int = 0;
    for(i in values){
      totalSum += i;
    }
    return totalSum / values.size;
  }

fun translateColor(color:String):String{
  when(color.lowercase()){
    "red"->return "Vermelho";
    "blue"->return "Azul";
    "green"->return "Verde";
    "yellow"->return "Amarelo";
    else->return "Qualquer outra cor.";
  }
}

fun main() {
  var entryValues : MutableList<Int> = mutableListOf (1,573,9,32,2);
  //List<int> entryValues = [];
  //var entryValues = null;
  println(getAvg(entryValues));   
  //Coincidentemente, o resultado é 123.4, ou por ser Int, 123

  println(translateColor("yelLOw"));
}
