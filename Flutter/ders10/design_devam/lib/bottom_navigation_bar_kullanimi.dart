import 'package:design_devam/sayfa_bir.dart';
import 'package:design_devam/sayfa_iki.dart';
import 'package:design_devam/sayfa_uc.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarKullanimi extends StatefulWidget {
  const BottomNavigationBarKullanimi({super.key});

  @override
  State<BottomNavigationBarKullanimi> createState() => _BottomNavigationBarKullanimiState();
}

class _BottomNavigationBarKullanimiState extends State<BottomNavigationBarKullanimi> {
  //state özelliği olan seçilem BottomNavigationBar için indexi takip eden değişken
  int secilenIndex=1;
  //Ekranda göstermke için istediğimiz sayfaların listesi 
  List<Widget> sayfaListesi =[Sayfa1(),Sayfa2(),Sayfa3()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

      body:sayfaListesi[secilenIndex],
    
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: secilenIndex,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.looks_one),
        label: "Bir",),

        BottomNavigationBarItem(icon: Icon(Icons.looks_two),
        label: "İki",),

        BottomNavigationBarItem(icon: Icon(Icons.looks_3),
        label: "Üç",)
        
      ],
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.white,
      backgroundColor: Colors.red,
      onTap: (index){
        setState(() {
          
          secilenIndex=index;
        });
      },
      
      ),

    );
  }
}
//bottomnavigatorbar statefulda çalışmalı *** sınav sorusu
//navigation bar örneği hata nerde sorusu
//listviewle alakalı soru