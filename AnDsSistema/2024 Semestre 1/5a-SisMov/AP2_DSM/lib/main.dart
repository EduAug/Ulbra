import 'package:ap2_pokedex/pages/home_page.dart';
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

  late Future<List<Pokemon>> _pokeFuture;
  late List<Pokemon> _characters;
  late List<Pokemon> _charFilter;

  @override
  initState(){
    super.initState();
    _pokeFuture = _fetchAllChars();
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
      home: HomePage(
        pokeFuture: _pokeFuture,
        charFilter: _charFilter,
        filterCharacter: _filterCharacters,
        getColorFromType: _getColorFromType,
        getTextColor: _getTextColor
      )
    );
  }
}