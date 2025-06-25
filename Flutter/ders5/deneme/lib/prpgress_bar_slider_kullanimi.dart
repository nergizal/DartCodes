import 'package:flutter/material.dart';

class ProgressBarSliderKullanimi extends StatefulWidget {
  const ProgressBarSliderKullanimi({super.key});

  @override
  State<ProgressBarSliderKullanimi> createState() => _PrpgressBarSliderKullanimiState();
}

class _PrpgressBarSliderKullanimiState extends State<ProgressBarSliderKullanimi> {
  bool progresGorunum =false; //progress değişkeni
  double ilerleme = 50; // slider
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ProgressBar ve Slider"),
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height:100,
              width: 100,
              child: Visibility(
                visible: progresGorunum,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>
                   ( Colors.deepOrange),//burdaki üçgenler Generic type
                  
                  ),
                ),),
            ),
            ElevatedButton(onPressed: (){
                setState(() {
                  progresGorunum =true;
                });
            }, child: Text("Başlat")),

            ElevatedButton(onPressed: (){
              setState(() {
                progresGorunum=false;
              });
            }, child: Text("Durdur")),

            Text("ilerleme: ${ilerleme.toInt()}"),
            Slider(
              max:100,
              min:0,
              activeColor: Colors.deepOrange, // aktif alanı gösterir
              inactiveColor: Colors.green, //inaktif alanı gösterir
              thumbColor: Colors.black, //topun rengi
              value: ilerleme,
              onChanged: (double i){
                setState(() {
                  ilerleme =i;
                });
              },

            ),




             
          ],
        ),
      ),
    );
  }
}