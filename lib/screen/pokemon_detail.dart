import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokemon_cards/utils/sizedbox_extensions.dart';

import '../controller/pokemon_details_controller.dart';
import '../getx_binding/getx_controller_const.dart';


class PokemonDetails extends StatefulWidget {
  const PokemonDetails({Key? key}) : super(key: key);

  @override
  State<PokemonDetails> createState() => _PokemonDetailsState();
}

class _PokemonDetailsState extends State<PokemonDetails> {
  int? number = 0;

  @override
  void initState() {
    // TODO: implement initState

    number = pokemonDetailsController.number;

    pokemonDetailsController.getData(number: '00$number');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PokemonDetailsController>(builder: (controller) {
      return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Text(
              pokemonDetailsController.pokemonDetailsModels != null ?
              pokemonDetailsController.pokemonDetailsModels![0].name.toString() : 'No Name' ,
              style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),
            ),
            leading: IconButton(onPressed: (){
              Get.back();
            }, icon: const Icon(Icons.arrow_back,color: Colors.black,)),
          ),
          body: controller.pokemonDetailsModels != null
              ?
          Container(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: CachedNetworkImage(
                        height: 300,
                        width: 300,
                        imageUrl: pokemonDetailsController.pokemonDetailsModels![0].images.large,
                        imageBuilder: (context, imageProvider) =>
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: imageProvider,
                                  fit: BoxFit.cover,
                                  // colorFilter:
                                  // ColorFilter.mode(Colors.red, BlendMode.colorBurn),
                                ),
                              ),
                            ),
                        placeholder: (context,
                            url) => const CircularProgressIndicator(),
                        errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                      ),
                    ),
                    ListTile(
                      title:  Text(
                        pokemonDetailsController.pokemonDetailsModels![0].name.toString().replaceAll('Name.', ''),
                        style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                      ),
                      subtitle:  Text(
                        pokemonDetailsController.pokemonDetailsModels![0].rules.toString().replaceAll('[', '').replaceAll(']', ''),
                        style: const TextStyle(fontSize: 14),
                      ),
                    ),
                    20.ph,
                    const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        'Types',
                        style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                      ),
                    ),
                    10.ph,
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: SizedBox(
                        height: 50,
                        width: 70,
                        child:  ListView.separated(
                            separatorBuilder: (context, int index) => 10.ph,
                            itemCount: pokemonDetailsController.pokemonDetailsModels![0].types!.length,
                            itemBuilder: (context, int index) {
                              return Text(
                                pokemonDetailsController.pokemonDetailsModels![0].types![index].toString(),
                                style: const TextStyle(fontSize: 12,color: Colors.red),
                              );
                            }
                        ),
                      ),
                    ),

                    20.ph,
                    const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        'Cards',
                        style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                      ),
                    ),
                    10.ph,

                  ],
                ),
              ),
            ),
          ) :
          const Center(child: CircularProgressIndicator(color: Colors.red,))

      );
    });
  }
}
