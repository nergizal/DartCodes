import 'dart:convert';

import 'package:api_uygulamasi/model/araba_model.dart';
import 'package:flutter/material.dart';

class LocalApiIslemleri extends StatefulWidget {
  const LocalApiIslemleri({super.key});

  @override
  State<LocalApiIslemleri> createState() => _LocalApiIslemleriState();
}

class _LocalApiIslemleriState extends State<LocalApiIslemleri> {
  late Future<List<Arabamodel>> arabalar;

  @override
  void initState() {
    // TODO: implement initState
    arabalar = arabalarJsonOku();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Local API"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: FutureBuilder<List<Arabamodel>>(
          future: arabalar,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<Arabamodel> arabalist = snapshot.data!;
              return ListView.builder(
                itemCount: arabalist.length,
                itemBuilder: (context, index) {
                  Arabamodel araba = arabalist[index];
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 48,
                      child: Text(araba.kurulusYili),
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }

  Future<List<Arabamodel>> arabalarJsonOku() async {
    try {
      String okunanString = await DefaultAssetBundle.of(
        context,
      ).loadString("data/arabalarr.json");

      var jsonObject = jsonDecode(okunanString);
      List<Arabamodel> tumArabalar = (jsonObject as List)
          .map((arabaMap) => Arabamodel.fromJson((arabaMap)))
          .toList();
      return tumArabalar;
    } catch (e) {
      return Future.error(e.toString());
    }
  }
}



    //bir json bize daima string veri döndürür
    //dosya içindeki json verisini string olarak aldık
  
    //debugPrint(jsonObject.toString()); //gör
    //json veri liste ile başladığı için benim sen bir listesin demem gerekiyor
    //List arabaListesi = jsonObject;
    //o listenin birinin elemanına ulşarakiçerisindeki tüm mapleri kullanabilirim
    //debugPrint(arabaListesi[0]["model"][0]["model_adi"].toString());
  
//ilk tamamı geliyor, sonra json olarak sonre tekli olarak geliyor
//listelere indexlerle , maplere keylerle ulaşırız.

//internetten veri çekme işlemleri future
