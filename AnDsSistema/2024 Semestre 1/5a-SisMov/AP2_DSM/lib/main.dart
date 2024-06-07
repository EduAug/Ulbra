import 'package:ap2_pokedex/services/poke_api.dart';
import 'package:ap2_pokedex/models/pokemon.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PokeApi api = PokeApi();
  late List<Pokemon> _characters;
  late List<Pokemon> _charFilter;

  @override
  void initState() {
    super.initState();
    _fetchAllChars();
  }

  Future<List<Pokemon>> _fetchAllChars() async {
    _characters = await api.fetchMons();
    _charFilter = _characters;

    return _characters;
  }

  _filterCharacters(String filtro) {
    setState(() {
      _charFilter = _characters.where((element) =>
          element.name.toLowerCase().contains(filtro.toLowerCase())).toList();
    });
  }

  Color _getColorFromType(String type) {
    switch(type.toLowerCase()){
      case 'fire':
        return Colors.deepOrange;
      case 'water':
        return Colors.indigo;
      case 'grass':
        return Colors.lightGreen;
      case 'electric':
        return Colors.yellow;
      case 'normal':
        return Colors.white;
      case 'psychic':
        return Colors.pink;
      case 'ice':
        return Colors.blueAccent;
      case 'dragon':
        return Colors.deepPurple;
      case 'dark':
        return Colors.black54;
      case 'fairy':
        return Colors.purpleAccent;
      case 'fighting':
        return Colors.deepOrangeAccent;
      case 'flying':
        return Colors.lightBlueAccent;
      case 'poison':
        return Colors.deepPurpleAccent;
      case 'ground':
        return Colors.brown;
      case 'rock':
        return Colors.blueGrey;
      case 'bug':
        return Colors.lightGreenAccent;
      case 'ghost':
        return Colors.purple;
      case 'steel':
        return Colors.grey;
      default:
        return Colors.white;
    }
  }

  Color _getTextColor(Color bgColor){
    return bgColor.computeLuminance() > 0.5 ? Colors.black : Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("PokéDex v2",style:
            TextStyle(color: Colors.white),),
          backgroundColor: Colors.red,
        ),
        body: Column(
          children: [
            Expanded(
              child: FutureBuilder<List<Pokemon>>(
                  future: api.fetchMons(), builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(color: Colors.red,),
                  );
                } else if (snapshot.hasData) {
                  return Expanded(
                    child: ListView.separated(itemBuilder: (context, ind) {
                      List<Color> colors = _charFilter[ind].typing.map(_getColorFromType).toList();
                      Color bgColor;
                      Color txColor;

                      if (colors.length > 1){
                        bgColor = Colors.transparent;
                        txColor = Colors.black;
                      } else {
                        bgColor = colors.first;
                        txColor = _getTextColor(bgColor);
                      }
                      return Container(
                        color: colors.length > 1 ? null : bgColor,
                        decoration: colors.length > 1 ? BoxDecoration(
                          gradient: LinearGradient(
                            colors: colors,
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ):null,
                        child: ListTile(
                          title: Row(
                            children: [
                              Text('#${_charFilter[ind].regionalDexNumber} / #${_charFilter[ind].dexNumber}',
                              style: TextStyle(color: txColor),),
                              const SizedBox(width: 40),
                              Text(_charFilter[ind].name,
                              style: TextStyle(color: txColor),),
                            ],
                          ),
                          subtitle: Text('${_charFilter[ind].typing}',
                          style: TextStyle(color: txColor),),
                          leading: Image.network(_charFilter[ind].image),
                        ),
                      );
                    }, separatorBuilder: (_, __) {
                      return const Divider();
                    },
                        itemCount: _charFilter.length
                    ),
                  );
                } else if (snapshot.hasError){
                  return Center(
                    child: Text('Error: ${snapshot.error}'),
                  );
                }
                return Container();
              }),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                onChanged: (inputString) {
                  _filterCharacters(inputString);
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Search ...",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}