import 'dart:math';

import 'package:flutter/material.dart';
//20-06
class ImagesExamples extends StatefulWidget {
  const ImagesExamples({super.key});

  @override
  State<ImagesExamples> createState() => _ImagesExamplesState();
}

class _ImagesExamplesState extends State<ImagesExamples> {
  String resimad ="1";
  List<String> resim = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"];
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Example"),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("resimler/p$resimad.png"),
            SizedBox(height: 20),
            ElevatedButton(
              
              onPressed: () {
                int sayi = random.nextInt(10) + 1;
                setState(() {
                  resimad =resim[sayi];
                });
              },
              child: Text("Resim Değiştir ($resimad)"),
              
            ),
          ],
        ),
      ),
    );
  }
}
