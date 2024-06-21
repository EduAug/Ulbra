import 'package:flutter/material.dart';
import '../models/character.dart';
import '../services/characters_api.dart';
import '../services/firebase/auth/auth_firebase.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final AuthFirebase _auth = AuthFirebase();
  CharactersApi api = CharactersApi();
  late List<Character> _characters;
  late List<Character> _charFilter;

  @override
  void initState() {
    super.initState();
    _fetchAllChars();
  }

  Future<List<Character>> _fetchAllChars() async {
    _characters = await api.fetchChars();
    _charFilter = _characters;

    return _characters;
  }

  _filterCharacters(String filtro){
    setState(() {
      _charFilter = _characters.where((element) => element.name.toLowerCase().contains(filtro.toLowerCase())).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Colors.purple,
        actions: [
          IconButton(
              onPressed: (){
                _auth.signOut();
              },
              icon: const Icon(Icons.exit_to_app)
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              onChanged: (inputString){
                _filterCharacters(inputString);
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Filtro",
              ),
            ),
          ),
          FutureBuilder<List<Character>>(future: api.fetchChars(), builder: (context,snapshot){
            if(snapshot.hasData){
              return Expanded(
                child: ListView.separated(itemBuilder: (context, ind) {
                  return ListTile(
                    subtitle: Text(_charFilter[ind].name),
                    leading: Image.network(_charFilter[ind].image),
                  );
                }, separatorBuilder: (_, __){
                  return const Divider();
                },
                    itemCount: _charFilter.length
                ),
              );
            }
            return const CircularProgressIndicator();
          }),
        ],
      ),
    );
  }
}
