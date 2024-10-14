import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../getx_binding/getx_controller_const.dart';

class PokemonList extends StatefulWidget {
  const PokemonList({Key? key}) : super(key: key);

  @override
  State<PokemonList> createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  @override
  void initState() {
    // TODO: implement initState

    pokemonListController.getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Obx(() {
          return pokemonListController.pokemonsListModels!.isEmpty
              ? const Center(
                  child: CircularProgressIndicator(
                    color: Colors.red,
                  ),
                )
              : CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      floating: false,
                      pinned: true,
                      expandedHeight: 50,
                      stretch: true,
                      backgroundColor: Colors.white,
                      elevation: 10,
                      flexibleSpace: FlexibleSpaceBar(
                        titlePadding: const EdgeInsets.all(12),
                        title: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12)),
                              border: Border.all(color: Colors.black)),
                          child: TextButton.icon(
                              onPressed: () {
                                Get.toNamed('/search');
                              },
                              icon: const Icon(Icons.search),
                              label: const Text('search')),
                        ),
                      ),
                    ),
                    SliverFillRemaining(
                        child: GridView.builder(

                      primary: false,
                      padding: const EdgeInsets.all(20),
                      itemCount: pokemonListController.pokemonsListModels!.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 0, // Horizontal space between items
                        mainAxisSpacing: 0, //// Vertical space between items
                        childAspectRatio: 1, // Aspect ratio of the items
                      ),
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            pokemonDetailsController.number = int.parse(
                                pokemonListController
                                    .pokemonsListModels![index].number);
                            Get.toNamed('pokemon-details');
                          },
                          child:
                              GestureDetector(
                                onTap: (){
                                          pokemonDetailsController.number =
                                              int.parse(pokemonListController.pokemonsListModels![index].number);
                                          Get.toNamed('pokemon-details');
                                        },
                                child: Card(
                                  child: Column(
                                    children: [
                                      Text(
                                        pokemonListController
                                            .pokemonsListModels![index].name
                                            .toString(),
                                        style: const TextStyle(
                                            fontSize: 12, fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                      const SizedBox(height: 6,),

                                      CachedNetworkImage(
                                        fit: BoxFit.fill,
                                        height: 150,
                                        width: 100,
                                        imageUrl: pokemonListController
                                            .pokemonsListModels![index].images.large,
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
                                        placeholder: (context, url) =>
                                        const CircularProgressIndicator(),
                                        errorWidget: (context, url, error) =>
                                        const Icon(Icons.error),
                                      ),
                                    ],
                                  ),
                                ),
                              )

                        );
                      },
                    )


                        )
                  ],
                );
        }));
  }
}
