import 'package:flutter/material.dart';

class SabitGridviewKullanimi extends StatefulWidget {
  const SabitGridviewKullanimi({super.key});

  @override
  State<SabitGridviewKullanimi> createState() => _SabitGridviewKullanimiState();
}

class _SabitGridviewKullanimiState extends State<SabitGridviewKullanimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sabit Gridview"),
        backgroundColor: Colors.red,
        foregroundColor: Colors.red.shade50,
      ),
      body: GridView.count(
        //Bir satırda ne kadar eleman olacağını belirtir.Column sayısı
        crossAxisCount: 2,
        //Oranlama: her bir satırın boyutunu belirler. 2: genişlik, 1: yükseklşk
        childAspectRatio: 2/1,
        children: [
          GestureDetector(
            onTap: () {
              debugPrint("Güneş tıklandı");
            },
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Icon(Icons.wb_sunny),
                    SizedBox(height: 3,),
                    Text("Güneş")
                ],

                
              ),
            ),
            
          ),
          GestureDetector(
            onTap: () {
              debugPrint("Ay tıklanıldı");
            },
            child: Card(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.brightness_2),
                Text("Ay"),
              ],
            ),),
          ),
           GestureDetector(
            onTap: () {
              debugPrint("Yıldız tıklanıldı");
            },
            child: Card(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star),
                Text("Yıldız"),
              ],
            ),),
          ),
           GestureDetector(
            onTap: () {
              debugPrint("Bulut tıklanıldı");
            },
            child: Card(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.cloud),
                Text("Bulut"),
              ],
            ),),
          ),
        ],
       ),
    );
  }
}