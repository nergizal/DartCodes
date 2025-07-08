import 'package:deneme/bluePage.dart';
import 'package:deneme/hata_sayfasi.dart';
import 'package:deneme/redPage.dart';
import 'package:deneme/route_generator.dart';
import 'package:deneme/yellowPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /*routes: {
        "/": (context) => Redpage(),
        "/yellowPage": (context) => Yellowpage(),
        "/bluePage": (context) => Bluepage(),
      },
*/
      onGenerateRoute: RouteGenerator.routeGenerator,

      onUnknownRoute: (settings) =>
          MaterialPageRoute(builder: (context) => HataSayfasi()),

      theme: ThemeData(
        textTheme: TextTheme(
          headlineMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ),
      debugShowCheckedModeBanner: false,
      //home: Redpage(),
    );
  }
}


