import 'package:ap2_pokedex/pages/login_page.dart';
import 'package:ap2_pokedex/services/firebase/auth/firebase_auth.dart';
import 'package:ap2_pokedex/utils/generation.dart';
import 'package:ap2_pokedex/widgets/list_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ap2_pokedex/models/pokemon.dart';
import '../services/poke_api.dart';

class HomePage extends StatefulWidget {
  final Generation selectedGen;
  const HomePage({required this.selectedGen, super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AuthFirebase _auth= AuthFirebase();
  PokeApi pokeApi = PokeApi();
  late List<Pokemon> characters;
  late List<Pokemon> charFilter;

  @override
  void initState() {
    super.initState();
    _fetchAllChars();
  }
  Future<List<Pokemon>> _fetchAllChars() async{
    final generationData= generationOffsets[widget.selectedGen]!;
    characters = await pokeApi.fetchMons(generationData['offset']!, generationData['limit']!);
    charFilter = characters;
    return characters;
  }

  _filterCharacters(String filtro){
    setState(() {
      charFilter = characters.where((element) =>
          element.name.toLowerCase().contains(filtro.toLowerCase())).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        title: const Text(
          "PokéDex",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black87,
        actions: [
          IconButton(onPressed: (){
              _auth.signOut();
              Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context)=> const LoginPage())
              );
          }, icon: const Icon(Icons.exit_to_app),color: Colors.white)
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<List<Pokemon>>(
                future: _fetchAllChars(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.separated(
                        itemBuilder: (context, ind) {
                            return PokemonListItem(
                                pokemon: charFilter[ind],
                            );
                        },
                        separatorBuilder: (_, __) {
                          return const Divider();
                        },
                        itemCount: charFilter.length);
                  } else if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(
                        color: Colors.red,
                      ),
                    );
                  } else if (snapshot.hasError) {
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
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
                hintText: "Search ...",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 2.0)
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
