import 'package:flutter/material.dart';
import '../models/pokemon.dart';


class PokemonListItem extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonListItem({
    required this.pokemon,
    super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> colors = pokemon.typing.map(_getColorFromType).toList();
    Color bgColor;
    Color txColor;
    if(colors.length > 1){
      bgColor = Colors.transparent;
      txColor = Colors.black;
    }else{
      bgColor = colors.first;
      txColor = _getTextColor(bgColor);
    }

    return Container(
      color: colors.length > 1 ? null : bgColor,
      decoration: colors.length > 1
        ? BoxDecoration(
          gradient: LinearGradient(
            colors: colors,
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            ),
        )
        : null,
      child: ListTile(
        title: Row(
          children: [
            Text(
              '#${pokemon.regionalDexNumber} / #${pokemon.dexNumber}',
              style: TextStyle(color: txColor),
            ),
            const SizedBox(width: 40),
            Text(
              pokemon.name,
              style: TextStyle(color: txColor),
            )
          ],
        ),
        subtitle: Text(
          '${pokemon.typing}',
          style: TextStyle(color: txColor),
        ),
        leading: Image.network(pokemon.image),
      ),
    );
  }
}

Color _getColorFromType(String type) {
  switch (type.toLowerCase()) {
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
      return Colors.black87;
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

Color _getTextColor(Color bgCol){
  return bgCol.computeLuminance() > 0.5 ? Colors.black : Colors.white;
}