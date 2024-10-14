
import 'dart:convert';

import 'package:http/http.dart' as http;
class PokemonListApi {
  static Future getPokemonList(int page) async {

    try {
      final Uri url = Uri.parse('https://api.pokemontcg.io/v2/cards?page=$page&pageSize=10');
      final response = await http.get(url);

        print('url:::::: ${response.body}');
      print('getting the response from the api ${response.statusCode}');

      if(response.statusCode == 200){
        final jsonData = json.decode(response.body);

        return response;
      }

    } catch (error){
      return error;
    }

  }
}