import 'package:flutter/material.dart';
import 'package:listview_ornekleri/views/ornek.dart';
import 'package:listview_ornekleri/views/ornek2.dart';
import 'package:listview_ornekleri/views/ornek3.dart';
import 'package:listview_ornekleri/views/ornek4.dart';
import 'package:listview_ornekleri/views/ornek5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Ornek5(),
    );
  }
}