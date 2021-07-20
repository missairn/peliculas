import 'package:flutter/material.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';

class CardSwiper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context)
        .size; //esto es para saber la info del dispositivo

    return Container(
      width: double.infinity,
      height: size.height *
          0.5, //acá selecciono el porcentaje que quiero que cubra el widget de la pantalla
      child: Swiper(
          itemCount: 10, //cantidad de tarjetas en mi swiper
          layout: SwiperLayout.STACK,
          itemWidth: size.width * 0.6,
          itemHeight: size.height * 0.9,
          itemBuilder: (_, int index) {
            return FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'),
                image: NetworkImage('http://via.placeholder.com/300x400'));
          }),
    );
  }
}
