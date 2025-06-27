import 'dart:math';

import 'package:design_devam/models/yemek.dart';
import 'package:design_devam/yemek_detay.dart';
import 'package:flutter/material.dart';

class FutureBuilderOzelListeleme extends StatefulWidget {
  const FutureBuilderOzelListeleme({super.key});

  @override
  State<FutureBuilderOzelListeleme> createState() => _FutureBuilderOzellistelemeState();
}

class _FutureBuilderOzellistelemeState extends State<FutureBuilderOzelListeleme> {
  Future<List< Yemek>> yemekleriGetir() async {
    List<Yemek> yemekListesi= <Yemek>[];

    Yemek y1 = Yemek(yemekId: Random().nextInt(99999999), yemekAdi: "Yaprak Sarma", yemekResimAdi: "resimler/y14.png", yemekFiyat: 275);
    Yemek y2 = Yemek(yemekId: Random().nextInt(99999999), yemekAdi: "Mantı", yemekResimAdi: "resimler/y15.png", yemekFiyat: 200);
    Yemek y3 = Yemek(yemekId: Random().nextInt(99999999), yemekAdi: "Adana Kebap", yemekResimAdi: "resimler/y16.png", yemekFiyat: 480);
    Yemek y4 = Yemek(yemekId: Random().nextInt(99999999), yemekAdi: "Lahmacun", yemekResimAdi: "resimler/y17.png", yemekFiyat: 120);
    Yemek y5 = Yemek(yemekId: Random().nextInt(99999999), yemekAdi: "Pizza", yemekResimAdi: "resimler/y18.png", yemekFiyat: 250);
    Yemek y6 = Yemek(yemekId: Random().nextInt(99999999), yemekAdi: "Taze Fasülye", yemekResimAdi: "resimler/y20.png", yemekFiyat: 100);

    yemekListesi.add(y1);
    yemekListesi.add(y2);
    yemekListesi.add(y3); 
    yemekListesi.add(y4);
    yemekListesi.add(y5);
    yemekListesi.add(y6);
    return yemekListesi;
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FutureBuilder Kullanımı"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: FutureBuilder(future: yemekleriGetir(), builder: (context,snapshot){
        if(snapshot.hasData){ List<Yemek> yemekler =snapshot.data!; // yemekler aslında snapshotun içinde


        return ListView.builder(itemCount:yemekler.length, itemBuilder:(context, index) {
          Yemek yemek = yemekler[index];
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)
              =>YemekDetay(yemek: yemek,)
              ),
              );
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    SizedBox(
                  
                      child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(yemek.yemekResimAdi,),
              ),
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(yemek.yemekAdi,style: TextStyle(fontSize: 20),),
                        Text(yemek.yemekFiyat.toString(),style: TextStyle(fontSize: 16),)
                      ],
                    ),
                    ),
                
                    Spacer(),
                    Icon(Icons.keyboard_arrow_right),
                
                
                  ],
                ),
              ),
            ),
          );
          
        },);
        }else{
          return Center();
        }
        
      }),
      );
  }
}