import 'package:flutter/material.dart';
import 'package:gridviewkullanimi/gridview_kullanimi.dart';
import 'package:gridviewkullanimi/yatay_listview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:GridviewKullanimi(),
    );
  }
}


