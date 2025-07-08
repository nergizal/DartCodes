import 'dart:math';

import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  RedPage({super.key});
  // Eğer stateless widget da buraya bir değişken tanımlıyorsam ya da dışardan alacaksın ki bix burda istemiyoruz ya da const keywordünü sileceksin
  int _rastgeleSayi = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Geri butonunu saklamak istersiniz
        automaticallyImplyLeading: false,
        title: Text("Kırmızı sayfa"),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Red Page", style: Theme.of(context).textTheme.headlineMedium),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(),
              ),
              onPressed: () {
                _rastgeleSayi = Random().nextInt(100);
                Navigator.of(context).pop(_rastgeleSayi);
              },
              child: Text("Ana sayfaya geri dön "),
            ),
          ],
        ),
      ),
    );
  }
}