import 'package:flutter/material.dart';

class PokemonList extends StatefulWidget {
  const PokemonList({super.key});

  @override
  State<PokemonList> createState() => PokemonListState();
}

class PokemonListState extends State<PokemonList> {
  TextEditingController searchController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: searchController,
          decoration: InputDecoration(
            hintText: '',
            filled: true,
            fillColor: Colors.white,
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          onChanged: (value) {
            // Aqui você pode implementar a lógica de pesquisa
            // O valor da pesquisa está em 'value'
          },
        ),
        Container(
          height: 40,
          width: 40,
          child: GridView.count(
            crossAxisCount: 2,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[100],
                child: Column(
                  children: [
                    const Text("#001 Bulbasaur"),
                    Image(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * .17,
                        fit: BoxFit.fill,
                        image: const AssetImage('assets/bulbasaur.png'))
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
