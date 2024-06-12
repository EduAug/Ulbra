import 'package:ap2_pokedex/pages/home_page.dart';
import 'package:ap2_pokedex/services/poke_api.dart';
import 'package:flutter/material.dart';
import 'models/pokemon.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PokeApi pokeApi = PokeApi();

  late Future<List<Pokemon>> _pokeFuture;
  late List<Pokemon> _characters;
  List<Pokemon> _charFilter = [];
  bool _isNotLoaded = true;

  @override
  void initState() {
    super.initState();
    _pokeFuture = _fetchAllChars();
  }

  Future<List<Pokemon>> _fetchAllChars() async{
    _characters = await pokeApi.fetchMons();
    _populateCharFilter();
    return _characters;
  }

  _populateCharFilter(){
    setState(() {
      _charFilter = _characters;
      _isNotLoaded = false;
    });
  }

  _filterCharacters(String filtro){
    setState(() {
      _charFilter = _characters.where((element) =>
      element.name.toLowerCase().contains(filtro.toLowerCase())).toList();
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(
          pokeFuture: _pokeFuture,
          charFilter: _charFilter,
          filterCharacter: _filterCharacters,
          isNotLoaded: _isNotLoaded,
      ),
    );
  }
}
