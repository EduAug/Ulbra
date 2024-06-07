class Character {
  final String name;
  final String image;

  const Character({required this.name, required this.image});

  factory Character.fromAPI(Map<String,dynamic> get){
    return Character(name: get["name"], image: get["image"]);
  }
}