
import 'dart:convert';

import 'package:http/http.dart' as http;
class PokemonDetailsApi {
  static Future getPokemonDetails({String? number}) async {

    print('checking the details page number $number');
    try {
      final Uri url = Uri.parse('https://api.pokemontcg.io/v2/cards?q=$number');
      final response = await http.get(url);


      // print('getting the response from the api ${response.statusCode}');

      if(response.statusCode == 200){
        final jsonData = json.decode(response.body);

        return response;
      }

    } catch (error){
      return error;
    }

  }
}