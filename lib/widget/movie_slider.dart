import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      color: Colors.black38,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
            padding: EdgeInsets.symmetric(
                horizontal:
                    20), //el padding es para separar el texto del borde del widget
            child: Text('Populars',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
        Expanded(
          //envolví el listview en un widget para que se expanda con el tamaño que le pida el wildget padre
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (_, int index) => _MoviePoster()),
        ),
      ]),
    );
  }
}

class _MoviePoster extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 190,
      color: Colors.pink,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/no-image.jpg'),
            image: NetworkImage('http://via.placeholder.com/300x400'),
            width: 130,
            height: 190,
            fit: BoxFit.cover,
          ),
          Text(
            'Starwars',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
