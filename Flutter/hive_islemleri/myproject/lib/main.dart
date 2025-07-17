import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:myproject/shared_kullanimi.dart';

void main() async {
  //vreitabanı dosyaları  oluşturma kodu
  await Hive.initFlutter("uygulama");
  //select from * gibi
  //alacağı veri türünü de özelleştirebiliriz=> await Hive.openBox<String>("test");
  await Hive.openBox("test");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyProject());
  }
}

class MyProject extends StatefulWidget {
  const MyProject({super.key});

  @override
  State<MyProject> createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: veriEkle),
      appBar: AppBar(
        title: Text("DEpolama İşlemleri"),

        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      //  body: Shared(),
    );
  }

  void veriEkle() async {
    //hive de veri eklemenin 2 yolu vardır
    //1) add metodu: veriyi ekler key i otomatik olarak sayı atar. yani birinin veri index:0 key:0 ikinci veri index:1, key:1
    //2) put metodu: eklerken sizden key ister o keye göre çağırma işlemi yaparsınız

    var box = Hive.box("test"); //0
    await box.add("Nergiz");
    await box.add(39); //1
    await box.add(false); //2
    box.keys.forEach((veri) {
      debugPrint(veri.toString());
    });
  }
}

class Shared extends StatelessWidget {
  const Shared({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
            width: 200,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(10),
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SharedKullanimi()),
                );
              },
              child: Text("Shared Preferences"),
            ),
          ),
        ],
      ),
    );
  }
}



/* 
Uygulama kapanıp açıldığında kaybolmasını istemediğimiz küçük verile shared preferences ile sakları















 */