class Pokemon {
  final String name;
  final String image;
  final List<String> typing;
  final int dexNumber;
  final int regionalDexNumber;

  const Pokemon({
    required this.name,
    required this.image,
    required this.typing,
    required this.dexNumber,
    required this.regionalDexNumber
  });

  factory Pokemon.fromAPI(Map<String,dynamic> get){
    String rawName = get['name'];
    String name = treatedName(rawName);
    String image = get['sprites']['front_default'];
    List<String> typing = (get['types'] as List)
      .map((e) => e['type']['name'] as String)
      .toList();
    int dexNumber = get['id'];
    int regionalDexNumber = dexNumber - 494;
    return Pokemon(
        name: name,
        image: image,
        typing: typing,
        dexNumber: dexNumber,
        regionalDexNumber: regionalDexNumber,
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