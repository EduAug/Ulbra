import 'package:flutter/material.dart';
import 'package:ap2_pokedex/models/pokemon.dart';

class HomePage extends StatelessWidget {
  final Future<List<Pokemon>> pokeFuture;
  final List<Pokemon> charFilter;
  final Function(String) filterCharacter;
  final Color Function(String) getColorFromType;
  final Color Function(Color) getTextColor;

  const HomePage({
    required this.pokeFuture,
    required this.charFilter,
    required this.filterCharacter,
    required this.getColorFromType,
    required this.getTextColor,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PokéDex v3",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<List<Pokemon>>(
                future: pokeFuture, builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(color: Colors.red,),
                );
              } else if (snapshot.hasData) {
                return Expanded(
                  child: ListView.separated(itemBuilder: (context, ind) {
                    List<Color> colors = charFilter[ind].typing.map(getColorFromType).toList();
                    Color bgColor;
                    Color txColor;

                    if (colors.length > 1){
                      bgColor = Colors.transparent;
                      txColor = Colors.black;
                    } else {
                      bgColor = colors.first;
                      txColor = getTextColor(bgColor);
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
                            Text('#${charFilter[ind].regionalDexNumber} / #${charFilter[ind].dexNumber}',
                              style: TextStyle(color: txColor),
                            ),
                            const SizedBox(width: 40),
                            Text(charFilter[ind].name,
                              style: TextStyle(color: txColor),
                            ),
                          ],
                        ),
                        subtitle:
                        Text('${charFilter[ind].typing}',
                          style: TextStyle(color: txColor),
                        ),
                        leading: Image.network(charFilter[ind].image),
                      ),
                    );
                  }, separatorBuilder: (_, __) {
                    return const Divider();
                  },
                      itemCount: charFilter.length
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
                filterCharacter(inputString);
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Search ...",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
