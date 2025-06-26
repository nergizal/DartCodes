import 'package:flutter/material.dart';

class GridviewKullanimi extends StatelessWidget {
  const GridviewKullanimi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView Örnekleri"),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.black,
      ),

      body:Ornek2(),
    );
  }
}


class Ornek1 extends StatefulWidget {
  const Ornek1({super.key});

  @override
  State<Ornek1> createState() => _Ornek1State();
}

class _Ornek1State extends State<Ornek1> {
  List<String> yemekler =[
    "Yaprak Sarma",
    "Fırında Patates",
    "Izgara Kanat",
    "Çiğköfte",
    "Adana Kebap",
    "Mantı",
    "Taze Fasülye",
     "Yaprak Sarma",
    "Sütlaç"

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 2/1), //burdaki ratio oranı yatay/dikey demek //crossAxisCount: kaç tane yanyana olacağı
      itemCount:yemekler.length, itemBuilder:(context, index) {
        return Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(yemekler[index]),
            ],
          ),
        );
      },   );
  }
}



/* 

1)Bir satırda 2 tane elaman olsun, oran 3/5 gridview
2)Elemanları container olacak card olmayacak. Gölge,radius,çerçeve olacak
3)Bu containerın bir arka plan resmi olacak soluk olacak, üzerinde de yemeğin adı yazacak.

Not: Eşit elemana ait yemek ve resim listeleri olmalı.

*/

class Ornek2 extends StatefulWidget {
  const Ornek2({super.key});

  @override
  State<Ornek2> createState() => _Ornek2State();
}

class _Ornek2State extends State<Ornek2> {
  final int index=0;
  List<String> yemekler =[
     "Yaprak Sarma",
    "Fırında Patates",
    "Izgara Kanat",
    "Çiğköfte",
    "Adana Kebap",
    "Mantı",
    "Taze Fasülye",
     "Yaprak Sarma",
    "Sütlaç"
  ];

  List<String> resimler =[
    "resimler/ys.png",
    "resimler/ps.png",
    "resimler/ık.png",
    "resimler/c.png",
    "resimler/kb.png",
    "resimler/m.png",
    "resimler/y23.png",
    "resimler/y24.png",
    "resimler/y25.png",
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 3/5), //burdaki ratio oranı yatay/dikey demek //crossAxisCount: kaç tane yanyana olacağı
      itemCount:yemekler.length, itemBuilder:(context, index) {
    return Container(
      height: 100,
      width: 100,
      
    
      decoration: BoxDecoration(
        color:Colors.black,
        
        
        borderRadius: BorderRadius.circular(15),
        border:Border.all(color: Colors.white,width: 2),
        boxShadow: [
          BoxShadow(color: Colors.black45,offset: Offset(2, 4),blurRadius: 6),
        ],
        image: DecorationImage(image: AssetImage(resimler[index]),fit: BoxFit.cover,
        opacity: 0.5
       
      
        
        
      ),
      ),
      
      alignment: Alignment.center,
      

      child:Center(
        child: Text(
          yemekler[index],style: TextStyle(color:Colors.white,fontSize: 18,fontWeight: FontWeight.bold,
          shadows: [
            Shadow(
              blurRadius: 10.0,
              color:Colors.black,
              offset: Offset(2.0, 2.0)
            ),
          ],
          ),
          
          
          textAlign: TextAlign.center,
          
        ),
      ),
      
    );
  });
}



}

