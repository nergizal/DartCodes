import 'package:flutter/material.dart';

class GreenPage extends StatelessWidget {
  const GreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sarı sayfa"),
        backgroundColor: Colors.yellow,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Text(
          "Yellow Page",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}