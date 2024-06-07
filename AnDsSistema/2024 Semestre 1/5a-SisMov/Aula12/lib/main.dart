import 'package:aula12_api/models/character.dart';
import 'package:aula12_api/services/characters_api.dart';
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
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Personagens"),
          backgroundColor: Colors.purple,
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
      ),
    );
  }
}