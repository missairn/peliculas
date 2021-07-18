import 'package:flutter/material.dart';
import 'package:peliculas/screens/details_screen.dart';
import 'package:peliculas/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pelis Adri',
      initialRoute: 'home', //es que al iniciar la app vamos a estar en el home
      routes: {
        'home': (_) => HomeScreen(),
        'details': (_) => DetailsScreen(),
      },
      theme: ThemeData.dark() //tema de la app
          .copyWith(appBarTheme: AppBarTheme(color: Colors.blueGrey)),
    );
  }
}
