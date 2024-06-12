import 'package:ap2_pokedex/widgets/list_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ap2_pokedex/models/pokemon.dart';

class HomePage extends StatelessWidget {
  final Future<List<Pokemon>> pokeFuture; //Lista do Future
  final List<Pokemon> charFilter; //Lista do filtro
  final Function(String) filterCharacter; //Função pra filtrar
  final bool isNotLoaded; //Flag para ver se o conteúdo inicial do filter já carregou

  const HomePage(
      {required this.pokeFuture,
      required this.charFilter,
      required this.filterCharacter,
      required this.isNotLoaded,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        title: const Text(
          "UnovaDex",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black87,
      ),
      body: Column(
        children: [
          Expanded(
            child:
            isNotLoaded
              ? const Center(
                child: CircularProgressIndicator(
                  color: Colors.red,
                ),
              )
              : FutureBuilder<List<Pokemon>>(
                future: pokeFuture,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Expanded(
                      child: ListView.separated(
                          itemBuilder: (context, ind) {
                              return PokemonListItem(
                                  pokemon: charFilter[ind],
                              );
                          },
                          separatorBuilder: (_, __) {
                            return const Divider();
                          },
                          itemCount: charFilter.length),
                    );
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
                filterCharacter(inputString);
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
