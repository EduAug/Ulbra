double getAvg(List<int> values){
    if(values.isEmpty){
      print("Lista vazia");
      return 0.0;
    }else if(values == Null){
      print("Lista... nula?");
      return 0.0;
    }
    int totalSum = 0;
    values.forEach((element)=>totalSum+=element);
    return totalSum / values.length;
  }

String translateColor(String color){
  switch(color.toLowerCase()){
    case "red":
      return "Vermelho";
    case "blue":
      return "Azul";
    case "green":
      return "Verde";
    case "yellow":
      return "Amarelo";
    default:
      return "Qualquer outra cor.";
  }
}

void main() {
  List<int> entryValues = [1,573,9,32,2];
  //List<int> entryValues = [];
  //var entryValues = null;
  print(getAvg(entryValues));   
  //Coincidentemente, o resultado é 123.4

  print(translateColor("yelLOw"));
}
