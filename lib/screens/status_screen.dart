import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:rm_app/models/character.dart';

class status_Screen extends StatefulWidget {
  final Character character;
  const status_Screen(this.character, {super.key});

  @override
  State<status_Screen> createState() => _status_ScreenState();
}

class _status_ScreenState extends State<status_Screen> {
  @override
  Widget build(BuildContext context) {
    final character = widget.character;


     return Scaffold(
      appBar: AppBar(
      title: Text(character.name),
      centerTitle: true,
      ),
      body: Card(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CachedNetworkImage(imageUrl: character.image)
              ],
             
            ),

            SizedBox(height: 20,),
             Column(
              mainAxisAlignment: MainAxisAlignment.center, 
                    children: [
                    Text("Tipo: ${character.type}", style: TextStyle(fontSize: 20)),
                    Text("Número Pokedex: ${character.num}", style: TextStyle(fontSize: 20)),
                    Text("Especie: ${character.name}", style: TextStyle(fontSize: 20)),
                    ]
                  ),
               ],
             ),
        ),
      );
  }
}