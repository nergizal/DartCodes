import 'package:flutter/material.dart';
import 'package:myproject/anasayfa.dart';
import 'package:myproject/p2.dart';
import 'package:myproject/p2.detay.dart';
import 'package:myproject/verify.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Anasayfam(),
    );
  }
}

class Sayfa1 extends StatefulWidget {
  const Sayfa1({super.key});

  @override
  State<Sayfa1> createState() => _Sayfa1State();
}

class _Sayfa1State extends State<Sayfa1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          height: 200,
          width: 200,

          decoration: BoxDecoration(
            //color: Colors.white,
            image: DecorationImage(image: AssetImage("resimler/p1.png")),
          ),
        ),
      ),
    );
  }
}
