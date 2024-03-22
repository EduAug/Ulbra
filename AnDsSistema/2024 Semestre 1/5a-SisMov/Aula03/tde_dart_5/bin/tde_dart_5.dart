List<int> getOddOutList(List<int> values){
  return values.where((element) => element % 2 != 0).toList();
}

void main(List<String> arguments) {
  List<int> initList = [1,5,345,243,27,85,234,16];
  var newList = getOddOutList(initList);
  print(newList);
}
