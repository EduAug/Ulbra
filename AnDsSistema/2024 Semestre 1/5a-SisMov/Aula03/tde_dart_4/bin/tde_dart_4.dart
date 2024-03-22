double getAverage({required List<int> values}){
  return values.reduce((avgSum, curVal) => avgSum + curVal)/values.length;
}
//Forma reduzida ao máximo, o "reduce" reduz, obviamente, uma lista
//com base na fórmula fornecida, onde há dois valores, um "total"
//reduzido dessa lista, e o valor que está sendo iterado (tipo um foreach)
//assim é passado por cada valor, e adicionado a essa soma
//Aqui é somado cada valor com seu anterior sucessivamente e então
//retornando sendo dividido pelo total de valores
void main(List<String> arguments) {
  print(getAverage(values: [1,2,3,4,5,6,7]));
}