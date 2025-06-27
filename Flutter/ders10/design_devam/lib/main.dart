import 'package:design_devam/bottom_navigation_bar_kullanimi.dart';
import 'package:design_devam/drawer_kullanimi.dart';
import 'package:design_devam/future_builder_listeleme.dart';
import 'package:design_devam/future_builder_ozel.dart';
import 'package:design_devam/tabbar_kullanimi.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:DrawerKullanimi(),
    );
  }
}



class FutureBuildKullanimi extends StatefulWidget {
  const FutureBuildKullanimi({super.key});

  @override
  State<FutureBuildKullanimi> createState() => _FutureBuildKullanimiState();
}

class _FutureBuildKullanimiState extends State<FutureBuildKullanimi> {

  Future<int> faktoriyelHesapla(int sayi) async{
    int sonuc =1;
    for(int i=1; i<=sayi; i++){
        sonuc = sonuc*i;
    }
    return sonuc;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FutureBuilder Kullanımı"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Future verilerin dönüşümünde listeleme için  kullanılırç
            FutureBuilder<int>(//bunun döndüreceği veri tür
              future: faktoriyelHesapla(8),//çalıştırılacak fonksiyon
              builder: (context, snapshot) { //snapshpt fonlsiyonunu dönen veri
                //eğer fonksiyon veri getiriken bir sorun olursa bu değişken nnull değer alır o da hata döndürür
                if(snapshot.hasError){
                  debugPrint("Hata oldu: ${snapshot.error}");
                }

                //eğer yukardaki fonksiyon çalıştı ver veri geldiyse çalışır
                if(snapshot.hasData){
                  return Text("Sonuc: ${snapshot.data}");
                }

                else{
                  return Text("Gösterilecek bir veri yok");
                }
              },)

          ],
        ),
      ),
    );
  }
}



/*  FutureBuilder, asenkron işlemlerin sonucuna göre widget oluşturmamızı sağlayan bir widget’tır. 
Yani bir Future (gelecekte tamamlanacak işlem, örneğin bir API çağrısı, veritabanı sorgusu vs.) tamamlandığında ekrana ne gösterileceğini kontrol etmek için kullanılır. 

FutureBuilder, bir Future objesi alır ve bu future tamamlandıkça (bekleme, başarılı, hata gibi durumlarda) farklı widget'lar gösteri


Navigator.of(context) → Navigator nesnesini verir
.push() → Yeni bir ekran açar
.pop() → Şu anki ekranı kapatır, bir önceki ekrana döner

Geri gitme(Pop):
Navigator.of(context).pop();

Yeni sayfa Açma (Push):
Navigator.of(context).push(
  MaterialPageRoute(builder: (context) => YeniSayfa()),
);



*/