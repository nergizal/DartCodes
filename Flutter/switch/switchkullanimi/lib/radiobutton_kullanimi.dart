import 'package:flutter/material.dart';

class RadiobuttonKullanimi extends StatefulWidget {
  const RadiobuttonKullanimi({super.key});

  @override
  State<RadiobuttonKullanimi> createState() => _RadiobuttonKullanimiState();
}

class _RadiobuttonKullanimiState extends
 State<RadiobuttonKullanimi> {
  int radioDeger =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Buton kullanımı"),
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(children: [
                Expanded(
                  child: RadioListTile(
                    contentPadding: EdgeInsets.all(0),
                    title :Text("Hiçbiri"), 
                              activeColor: Colors.red,
                              value: 0, groupValue :radioDeger, onChanged: (int? gelenVeri){
                                setState(() {
                  radioDeger =gelenVeri!;
                                });
                  
                              }),
                ),
            Expanded(
              child: RadioListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text("Kadın"),
                activeColor: Colors.red,
                value: 1, groupValue: radioDeger, onChanged: (int? gelenVeri){
                  setState(() {
                    radioDeger =gelenVeri!;
                  });
              
              }),
            ),

            Expanded(
              child: RadioListTile(
                contentPadding: EdgeInsets.all(0),
                title :Text("Erkek"), 
              activeColor: Colors.red,
              value: 2, groupValue :radioDeger, onChanged: (int? gelenVeri){
                setState(() {
                  radioDeger =gelenVeri!;
                });
              
              }),
            ),
            ],),

           
          ],
        ),
      ),
    );
  
  }
}