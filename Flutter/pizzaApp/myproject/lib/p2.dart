import 'package:flutter/material.dart';
import 'package:myproject/main.dart';

class Sayfa2 extends StatefulWidget {
  const Sayfa2({super.key});

  @override
  State<Sayfa2> createState() => _Sayfa2State();
}

class _Sayfa2State extends State<Sayfa2> {
  String? secilenDeger;
  final List<String> secenekler = ["İngilizce", "Türkçe"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        title: Row(
          children: [
            SizedBox(
              width: 30,
              height: 30,
              child: Image.asset("resimler/Pizza icon.png"),
            ),
            SizedBox(width: 5),
            SizedBox(
              width: 50,
              height: 40,
              child: Image.asset("resimler/Ovenly.png"),
            ),
          ],
        ),
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

      /*

  DropdownButton<String>(
              value: secilenDeger,
              items: secenekler.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  secilenDeger = newValue;
                });
              },
            ),
      */
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Card(
              child: Image.asset("resimler/pizza.png"),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            "Welcome to Ovenly",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            "Your favorite pizzas,freshly bakes and delivered to your doorstep with love and care!",
            style: TextStyle(fontSize: 14, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 170),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.deepOrangeAccent,
                  radius: 5,
                ),
                SizedBox(width: 5),
                CircleAvatar(backgroundColor: Colors.grey, radius: 5),
                SizedBox(width: 5),
                CircleAvatar(backgroundColor: Colors.grey, radius: 5),
                SizedBox(width: 5),
                CircleAvatar(backgroundColor: Colors.grey, radius: 5),
              ],
            ),
          ),
          SizedBox(height: 70),

          Container(
            width: 400,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
              ),
              child: Text(
                "Log In",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: 400,
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(backgroundColor: Colors.white),
              child: Text(
                "Sign me up!",
                style: TextStyle(color: Colors.deepOrange, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
