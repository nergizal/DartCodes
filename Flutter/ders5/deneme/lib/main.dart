import 'package:deneme/fade_image_kullanimi.dart';
import 'package:deneme/prpgress_bar_slider_kullanimi.dart';
import 'package:deneme/web_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:FadeImageKullanimi(),
    );
  }
}