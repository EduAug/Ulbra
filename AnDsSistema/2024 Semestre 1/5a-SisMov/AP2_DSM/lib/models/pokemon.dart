class Pokemon {
  final String name;
  final String image;
  final List<String> typing;
  final int dexNumber;

  const Pokemon({
    required this.name,
    required this.image,
    required this.typing,
    required this.dexNumber,
  });

  factory Pokemon.fromAPI(Map<String,dynamic> get){
    String rawName = get['name'];
    String name = treatedName(rawName);
    String image = get['sprites']['front_default'];
    List<String> typing = (get['types'] as List)
      .map((e) => e['type']['name'] as String)
      .toList();
    int dexNumber = get['id'];
    return Pokemon(
        name: name,
        image: image,
        typing: typing,
        dexNumber: dexNumber,
    );
  }

  static String treatedName(String name){
    String capital = '${name[0].toUpperCase()}${name.substring(1)}';
    int foundIndex = capital.indexOf('-');
    if(foundIndex != -1) {
      capital = capital.substring(0, foundIndex);
    }

    return capital;
  }
}