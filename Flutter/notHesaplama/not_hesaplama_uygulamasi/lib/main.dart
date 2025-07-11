import 'package:flutter/material.dart';
import 'package:not_hesaplama_uygulamasi/constants/sabitler.dart';
import 'package:not_hesaplama_uygulamasi/widgets/ortalama_hesapla_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Sabitler.anaRenk, //uygulamanın ana rengi 
       useMaterial3: false,
       visualDensity: VisualDensity.adaptivePlatformDensity),// tüm platfromlarda aynı renk olsun apate
      debugShowCheckedModeBanner: false,
      title: "Ortalama Hesaplama",
      home: OrtalamaHesaplaPage(),//google playdeki başlık
    );
  }
}
