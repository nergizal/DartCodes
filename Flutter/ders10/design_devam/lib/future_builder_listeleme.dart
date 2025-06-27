import 'package:flutter/material.dart';

class FutureBuilderListeleme extends StatefulWidget {
  const FutureBuilderListeleme({super.key});

  @override
  State<FutureBuilderListeleme> createState() => _FutureBuilderListelemeState();
}

class _FutureBuilderListelemeState extends State<FutureBuilderListeleme> {
//veri kaynağımızı oluşturan metod, veriyi apidan vs çelkersek future lazım olacka future türü o yüzden
Future<List<String>> verileriGetir() async{
  List<String> ulkeler = ["Türkiye", "Almanya","Japonya","Güney Kore", "Singapur", "Azerbaycan"];

  return ulkeler;
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FutureBuilder Kullanımı"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      //future parametreis bununiçini dolduracak metot
      body:FutureBuilder(future: verileriGetir(), builder: (context, snapshot){
        //data varsa, 
          if(snapshot.hasData){
            List<String> ulkeListesi = snapshot.data!;

            return ListView.builder(
              itemCount: ulkeListesi.length,
              itemBuilder: (context, index) {
                String ulke = ulkeListesi[index]; //sürekli ulkeListesi[index] şunu yazmamamk için ulke değişkenine atadık
                return Card(
                  child: Padding(padding: EdgeInsets.all(10), //kartlar arası mesafe
                  child: SizedBox(height: 55, //kartın yüksekliği için 
                  child: Row(children: [Text(ulke)],),),),
                );
              },
            );

          }else{
            return Center();
          }
      }, ),
      );
  }
} 