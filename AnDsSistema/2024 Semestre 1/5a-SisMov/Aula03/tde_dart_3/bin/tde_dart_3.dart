List<int> getEvenedOutList({required List<int> roughList}){
  return roughList.where((element) => element%2==0).toList();
}

void main(List<String> arguments) {
  List<int> starterList = [0,51,103,501,46,7,547,101,848];
  print(getEvenedOutList(roughList: starterList));
}
