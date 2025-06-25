


import 'package:flutter/material.dart';

class Switchkullanimi extends StatefulWidget {
  const Switchkullanimi({super.key});

  @override
  State<Switchkullanimi> createState() => _SwitchkullanimiState();
}

class _SwitchkullanimiState extends State<Switchkullanimi> {
  bool switchKontrol=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch Kullanımı"),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),

      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch(
              thumbIcon: WidgetStateProperty.resolveWith((icon){
                //return Icon(Icons.add);
              }),
              activeThumbImage: NetworkImage("https://www.shareicon.net/data/512x512/2015/08/04/79959_moon_512x512.png"),
              activeColor: Colors.green, //seçili durumdaki yuvarlak kısım 
             inactiveThumbColor: Colors.brown,
             inactiveTrackColor: Colors.green,
              value: switchKontrol, onChanged: (gelenVeri){
                setState(() {
                  switchKontrol = gelenVeri;
                });
            }),

            Text(switchKontrol ? "Açıldı" : "Kapandı"),
          ],
        )
      ),
    );
  }
}