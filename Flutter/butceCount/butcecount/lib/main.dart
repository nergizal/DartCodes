import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NormalPage(),
    );
  }
}

class NormalPage extends StatelessWidget {
  const NormalPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController adTf = TextEditingController();
    TextEditingController butceTf = TextEditingController();
    TextEditingController arttiTf = TextEditingController();
    TextEditingController azaltTf = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Veri Sayfası"),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: const EdgeInsets.all(12.0),
            child: TextField(
              controller:adTf,
              decoration: InputDecoration(
                label:Text("Ad Soyad"),
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width:2)
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green, width: 2),
                )
              ),
              
            ),
            
            
            
            ),
            Padding(padding: const EdgeInsets.all(12.0),
            child: TextField(
              controller:butceTf,
              decoration: InputDecoration(
                label:Text("Bütçe"),
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width:2)
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green, width: 2),
                )
              ),
              
            ),
            
            ),
            Padding(padding: const EdgeInsets.all(12.0),
            child: TextField(
              controller:arttiTf,
              decoration: InputDecoration(
                label:Text("Artış"),
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width:2)
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green, width: 2),
                )
              ),
              
            ),
            
            
            
            ),
            Padding(padding: const EdgeInsets.all(12.0),
            child: TextField(
              controller:adTf,
              decoration: InputDecoration(
                label:Text("Azalt"),
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width:2)
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green, width: 2),
                )
              ),
              
            ),
            
            
            
            ),

ElevatedButton(onPressed: (){
  String adSoyad =adTf.text;
  double butce =double.parse(butceTf.text);
  double arttir = double.parse(arttiTf.text);
  double azalt = double.parse(azaltTf.text);
}, child: Text("Gönder"),
style: ElevatedButton.styleFrom(
  backgroundColor: Colors.blue,
  foregroundColor: Colors.white,
  shape:RoundedRectangleBorder(
    borderRadius: BorderRadiusGeometry.circular(10),
    side:BorderSide(color: Colors.black45, width:2)
  ),
),


),




          ],
        ),
      ),
    );
  }
}






class ButcePage extends StatefulWidget {
  final String adSoyad;
  double butce;
  final double arttir;
  final double azalt;
   ButcePage({
    required this.adSoyad,
    required this.butce,
    required this.arttir,
    required this.azalt,
   });

  @override
  State<ButcePage> createState() => _ButcePageState();
}

class _ButcePageState extends State<ButcePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bütçe Sayfası"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
    );
  }
}