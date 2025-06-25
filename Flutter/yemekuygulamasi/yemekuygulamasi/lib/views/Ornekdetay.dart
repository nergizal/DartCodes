import 'package:flutter/material.dart';
import 'package:yemekuygulamasi/models/eat.dart';

class Ornekdetay extends StatelessWidget {
  final Eat eaters;
  const Ornekdetay({required this.eaters});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${eaters.name}"),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  
                  height: 200,
                  width: 200,
                  child: Image.asset(eaters.imgUrl),
                ),
              ),

              SizedBox(height: 40,),
              Text(eaters.name, style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),),
              SizedBox(height: 40,),
              Center(child: Text(eaters.detay, style: TextStyle(fontSize: 24),textAlign: TextAlign.center,)),
              SizedBox(height: 40,),
              
            ],
          ),
      ),
      
      
      
      );
  }
}