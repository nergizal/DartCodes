import 'package:deneme/Images_examples.dart';
import 'package:deneme/datePicker_kullanimi.dart';
import 'package:deneme/fadeinimage_kullanimi.dart';
import 'package:deneme/scrollView_kullanimi.dart';
import 'package:deneme/timePicker_kullanimi.dart';
import 'package:flutter/material.dart';

//20-06
void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DatepickerKullanimi(),
    );
  }
}