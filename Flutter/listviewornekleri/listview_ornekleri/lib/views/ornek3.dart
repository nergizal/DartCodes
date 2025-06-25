import 'dart:math';

import 'package:flutter/material.dart';

class Ornek3 extends StatelessWidget {
  const Ornek3({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> names=["Sevil Aydın","Berke Özdemir","Zehra Gümüş","Aycan Mutlu","Serpil Ulus","Aydan Özdemir","Zeynep Akmar","Lütfü Sarı","Ece Uslu","Can Aydın"];
    List<String> images=[
      "1.png",
      "2.png",
      "3.png",
      "4.png",
      "5.png",
      "6.png",
      "7.png",
      "8.png",
      "9.png",
      "10.png",
      ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Resim ve Yazı Örnek"),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body:ListView.builder(itemCount: names.length,
      itemBuilder: (context, index) {
        return KisiKart(name: names[index],image: images[index],);
      },)
    );
  }
}

class KisiKart extends StatefulWidget {
  final String name;
  final String image;
  const KisiKart({required this.name, required this.image});



  @override
  State<KisiKart> createState() => _KisiKartState();
}

class _KisiKartState extends State<KisiKart> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color:Color.fromARGB(Random().nextInt(255),Random().nextInt(255) ,Random().nextInt(255), Random().nextInt(255)),
      child:SizedBox(
        height: 75,
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage("resimler/${widget.image}"),
            radius: 25,
          ),
          title: Text(widget.name),
          subtitle: Text("05416471851"),
          trailing: Icon(Icons.phone),
        ),
      )
    );
  }
}