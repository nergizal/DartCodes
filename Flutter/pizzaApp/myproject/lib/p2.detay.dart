import 'package:flutter/material.dart';

class Sayfa2Detay extends StatefulWidget {
  const Sayfa2Detay({super.key});

  @override
  State<Sayfa2Detay> createState() => _Sayfa2DetayState();
}

class _Sayfa2DetayState extends State<Sayfa2Detay> {
  String? secilenDeger;
  final List<String> secenekler = ["İngilizce", "Türkçe"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: DropdownButton<String>(
              value: secilenDeger,
              items: secenekler.map((String item) {
                return DropdownMenuItem<String>(value: item, child: Text(item));
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  secilenDeger = newValue;
                });
              },
            ),
          ),
        ],
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Container(
                  child: Text(
                    "Welcome to Ovenly",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Container(
                  child: Text(
                    "We’ll send you a verification code to get started",
                    style: TextStyle(fontSize: 14, color: Colors.black45),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 60),

          Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Phone Number*",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 230, 228, 228),
                    image: DecorationImage(image: AssetImage("resimler/b.png")),
                  ),
                  height: 30,
                  width: 60,

                  child: Container(
                    child: Text(
                      "+65",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ),
                ),
              ),

              Container(
                height: 30,
                width: 120,

                child: Text(
                  "94167XXXXX",
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
              ),

              Divider(color: Colors.black, thickness: 1),
            ],
          ),
        ],
      ),
    );
  }
}
