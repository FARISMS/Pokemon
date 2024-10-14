

import 'dart:convert';

import 'package:get/get.dart';


import '../models/pokemons_details_modals.dart';
import '../network/pokemon-details-api.dart';

class PokemonDetailsController extends GetxController {
  static PokemonDetailsController instance = Get.find();
  String apiUrl = 'https://pokedex.alansantos.dev';
  int? number;
   List<Details>? pokemonDetailsModels;


  @override
  void onInit() {
    // TODO: implement onInit
    // getData();
    super.onInit();
  }

  Future<void> getData({String? number}) async {


    final response = await PokemonDetailsApi.getPokemonDetails(number: number);

    print('getting the response from the details api ${response.body}');


    if(response.statusCode == 200){
      PokemonDetailsModels pokemonDetails = PokemonDetailsModels.fromJson(jsonDecode(response.body)) ;
      pokemonDetailsModels = pokemonDetails.data;

      update();

    }
    else {
      Get.snackbar('Error', 'Sorry Error Occurred ');
    }

  }



}