

import 'package:get/get.dart';

import '../screen/pokemon_detail.dart';
import '../screen/pokemon_list.dart';


class Routes {
  static final routes = [

    GetPage(
      name: '/',
  transition: Transition.zoom,
  page: () => PokemonList(),

    ),
// GetPage(
//       name: '/search',
//   transition: Transition.zoom,
//   page: () => SearchScreen(),
//     ),
    GetPage(
      name: '/pokemon-details',
  // transition: Transition.zoom,
  page: () => PokemonDetails(),
    ),

  ];
}