import 'package:flutter/material.dart';
//20-06

class ScrollviewKullanimi extends StatefulWidget {
  const ScrollviewKullanimi({super.key});

  @override
  State<ScrollviewKullanimi> createState() => _ScrollviewKullanimiState();
}

class _ScrollviewKullanimiState extends State<ScrollviewKullanimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text("ScrollView Kullanımı"),
      ),
      body: Center(
        child: Container(
          height: 600,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(height: 300, color: Color(0xFFB51A2B)),
                Container(height: 300, color: Color(0xFFFFA586)),
                Container(height: 300, color: Color(0xFF384358)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
