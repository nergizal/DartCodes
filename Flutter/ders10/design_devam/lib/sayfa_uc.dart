import 'package:flutter/material.dart';

class Sayfa3 extends StatelessWidget {
  const Sayfa3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Bar"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Center(child: Text("Sayfa 3"),),
    );
  }
}