
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokemon_cards/models/pokemons_details_modals.dart';
import 'package:pokemon_cards/screen/pokemon_list.dart';

import '../models/pokemons_list_modals.dart';
import '../network/pokemon_list_api.dart';

class PokemonListController extends GetxController {
  static PokemonListController instance = Get.find();
  String apiUrl = 'https://pokedex.alansantos.dev';
  RxList<PokemonDetailsModels>? pokemonsListModel = <PokemonDetailsModels>[].obs;
  RxList<Datum>? pokemonsListModels = <Datum>[].obs;
  RxList<Datum>? filteredPokemonListModels = <Datum>[].obs;


  @override
  void onInit() {
    // TODO: implement onInit
    getData();
    super.onInit();
  }

  Future<void> getData() async {


    final response = await PokemonListApi.getPokemonList(1);

    if(response.statusCode == 200){
      PekemonsListModels pokemonList = PekemonsListModels.fromJson(jsonDecode(response.body));

      pokemonsListModels?.value =  pokemonList.data;

    }
    else {
      Get.snackbar('Error', 'Sorry Error Occurred ');
    }

  }

  // search category
  void searchCat(String searchStr) {
    filteredPokemonListModels?.clear();
    for (var item in pokemonsListModels!) {
        if (item.name.contains(RegExp(searchStr, caseSensitive: false))) {
          filteredPokemonListModels?.add(
              item
          );
        }

    }
    // print(filteredPokemonListModels);
    update();
  }

}