import 'dart:convert';
import "package:ap2_pokedex/constants.dart";
import 'package:ap2_pokedex/models/pokemon.dart';
import 'package:http/http.dart' as http;

class PokeApi {
  Future<List<Pokemon>> fetchMons() async{
    final response = await http.get(Uri.parse('$BASE_URL/pokemon?offset=493&limit=156'));
    if(response.statusCode == 200){
      List listReturn = jsonDecode(response.body)['results'];

      List<String> dexUrls = listReturn.map((allPokemonDexReturn) => allPokemonDexReturn['url'] as String).toList();
      List<Future<Pokemon>> dexForEach = dexUrls.map((individualUrl) => fetchMonDetails(individualUrl)).toList();

      List<Pokemon> allOfThem = await Future.wait(dexForEach);
      return allOfThem;
    }
    throw Exception('Something went wrong fetching the API');
  }

  Future<Pokemon> fetchMonDetails(String url) async{
    final pokeResponse = await http.get(Uri.parse(url));
    if(pokeResponse.statusCode == 200) {
      var pokeData = jsonDecode(pokeResponse.body);
      return Pokemon.fromAPI(pokeData);
    }else{
      throw Exception('Failed to load pokemon at $url');
    }
  }
}