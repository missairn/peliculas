import 'package:flutter/material.dart';
import 'package:peliculas/widget/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pelis en cines'),
          elevation: 0,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search_outlined))
          ],
        ),
        body: Column(
          children: [
            CardSwiper()
            // Card swipper
            //listado de pelis
          ],
        ));
  }
}
