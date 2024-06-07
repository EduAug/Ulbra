import 'dart:convert';

import 'package:aula12_api/constants.dart';
import 'package:aula12_api/models/character.dart';
import 'package:http/http.dart' as http;

class CharactersApi {
  Future<List<Character>> fetchChars() async{
      final response = await http.get(Uri.parse('$BASE_URL/character'));
      if(response.statusCode == 200){
        var listReturn = jsonDecode(response.body)["results"] as List;
        return listReturn.map((e) => Character.fromAPI(e)).toList();
      }
      throw Exception("Erro ao buscar dados da api");
  }
}