import 'package:flutter/material.dart';

class ToggleButtonKullanimi extends StatefulWidget {
  const ToggleButtonKullanimi({super.key});

  @override
  State<ToggleButtonKullanimi> createState() => _ToggleButtonKullanimiState();
}

class _ToggleButtonKullanimiState extends State<ToggleButtonKullanimi> {

 List<bool> toggleDurumlari=[false,true,false];
   int secilenToggleIndex=0;  @override
  
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: Text("Toggle Buton Kullanımı"),
        backgroundColor: Colors.brown,

        foregroundColor: Colors.white,
      ),
      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              ToggleButtons(children: [
                Icon(Icons.looks_one),
                Icon(Icons.looks_two),
                Icon(Icons.looks_3),
              ],
               isSelected: toggleDurumlari,
               color: Colors.red,
               selectedBorderColor: Colors.deepPurple,
               fillColor: Colors.yellow,


              onPressed: (int secilenIndex){
                setState(() {
                  toggleDurumlari[secilenIndex]=
                  !toggleDurumlari[secilenIndex];
                });
                secilenToggleIndex =secilenIndex;
              },


              ),
          ],
        ),
      )
    );
  }
}