double calculator(int n1, int n2, String operation){
  switch (operation) {
    case "+":
      return n1+n2.toDouble();
    case "-":
      return n1-n2.toDouble();
    case "*":
      return n1*n2.toDouble();
    case "/":
    if(n2 != 0){
      return n1/n2.toDouble();
    }else{
      return 0.0;
    }
    default:
      return 0.0;
  }
}
//Boo, bad, no switch case.
void main(){
  print(calculator(1, 13, "/"));
  print(calculator(2, 1, "+"));
  print(calculator(15, 2, "-"));
  print(calculator(13, 3, "*"));
}
