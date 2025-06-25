
import 'package:flutter/material.dart';

class Checkboxkullanimi extends StatefulWidget {
  const Checkboxkullanimi({super.key});

  @override
  State<Checkboxkullanimi> createState() => _CheckboxkullanimiState();
}

class _CheckboxkullanimiState extends 

State<Checkboxkullanimi> {
  bool dartDurumu =false;
  bool kotlinDurum =false;
  String secimKotlin = "Sevmiyor";
  String secimDart = "Seviyor";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckBox kullanımı"),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CheckboxListTile(
              title: Text("Dart"),
              controlAffinity: ListTileControlAffinity.leading,
              checkColor: Colors.red,
              activeColor: Colors.deepPurple,
              value: dartDurumu, onChanged: (gelenVeri){
                setState(() {
                  dartDurumu =gelenVeri!;
                  secimDart =dartDurumu ?
                  "Seviyor" : "Sevmiyor";

                });

            }),
            CheckboxListTile(
              title: Text("Kotlin"),
              controlAffinity: ListTileControlAffinity.leading,
              checkColor: Colors.red,
              activeColor: Colors.deepPurple,
              value: kotlinDurum, onChanged: (gelenVeri){
                setState(() {
                  kotlinDurum =gelenVeri!;
                  secimKotlin= kotlinDurum ?
                  "Seviyor" : "Sevmiyor";
                });

            }),


            Padding(padding: const EdgeInsets.all(8),
            child: Text("Kullanıcı kotlinini $secimKotlin, dartı $secimDart", style: TextStyle(fontSize: 20)),),





          ],
        )
      ),
    );
  }
}