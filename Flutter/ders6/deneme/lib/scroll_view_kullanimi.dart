import 'package:flutter/material.dart';

class ScrollViewKullanimi extends StatefulWidget {
  const ScrollViewKullanimi({super.key});

  @override
  State<ScrollViewKullanimi> createState() => _ScrollViewKullanimiState();
}

class _ScrollViewKullanimiState extends State<ScrollViewKullanimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scrollview Kullanımı"),
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          height: 600,
          color: Colors.brown,
          child: SingleChildScrollView  (
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Container(
                  width: 300,
                  height: 400,
                  color:Colors.red
                 ),
                 Container(
                  width: 300,
                  height: 400,
                  color:Colors.blue
                 ),
                 Container(
                  width: 300,
                  height: 400,
                  color:Colors.green
                 ),
              ],
            ),
          ),
        ),
      )
    );
  }
}