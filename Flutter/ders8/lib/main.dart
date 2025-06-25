import 'package:ders9/dinamik_listView_kullanimi.dart';
import 'package:ders9/sabit_gridView_kullanimi.dart';
import 'package:ders9/sabit_listView_kullanimi.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DinamikListviewKullanimi(),
    );
  }
}
