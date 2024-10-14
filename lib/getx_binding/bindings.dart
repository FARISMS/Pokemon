
import 'package:get/get.dart';

import '../controller/pokemon_details_controller.dart';
import '../controller/pokemons_list_controller.dart';


class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => PokemonListController(),fenix: true);
    Get.lazyPut(() => PokemonDetailsController(),fenix: true);
  }

}