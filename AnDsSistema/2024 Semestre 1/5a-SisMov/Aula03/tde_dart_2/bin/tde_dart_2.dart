List<int> dobrarLista(List<int> baselist){
  return baselist.map((e) => e*2).toList();
  //High-order por "retornar" um .map().toList()?
}

void main(List<String> arguments) {
  List<int> lista = [1,2,3,5,654,3421,2];
  List<int> listaDobrada = dobrarLista(lista);
  listaDobrada.forEach((element) { print(element); });
}
