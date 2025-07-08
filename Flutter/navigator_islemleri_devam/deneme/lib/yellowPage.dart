import 'package:flutter/material.dart';

class Yellowpage extends StatelessWidget {
  const Yellowpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yellow Page"),
        backgroundColor: Colors.yellow,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Yellow Page",),],
        ),
      ),
    );
    
  }
}
//Materialdan bir headline çekin çektiğinizin size:28, kalın 