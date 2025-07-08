import 'package:deneme/bluePage.dart';
import 'package:deneme/hata_sayfasi.dart';
import 'package:deneme/redPage.dart';
import 'package:deneme/yellowPage.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => Redpage());

      case "/yellowPage":
        return MaterialPageRoute(builder: (context) => Yellowpage());

      case "/bluePage":
      String name = settings.arguments as
      String;
        return MaterialPageRoute(builder: (context) => Bluepage(ad:name));

      default:
        return MaterialPageRoute(builder: (context) => HataSayfasi());
    }
  }
}
