import 'package:flutter/material.dart';
import 'package:peliculas/widget/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('On demand'),
          elevation: 0,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search_outlined))
          ],
        ),
        body: SingleChildScrollView(
          //permite hacer scroll
          child: Column(
            children: [
              //tarjetas principales

              CardSwiper(),

              //slider de peliculas

              MovieSlider(),
            ],
          ),
        ));
  }
}
