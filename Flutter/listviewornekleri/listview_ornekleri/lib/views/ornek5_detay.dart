import 'package:flutter/material.dart';
import 'package:listview_ornekleri/models/user.dart';

class Ornek5Detay extends StatelessWidget {
  final User user;
  const Ornek5Detay({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detay sayfası"),
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
             child:Image.asset(user.imgUrl)
            ),
            SizedBox(height: 20,),
            Text(user.name, style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),),

            SizedBox(height: 10,),
            Text(user.tel.toString(),style: TextStyle(
              color: Colors.grey, fontSize: 28
            ),)
          ],
        ),
      )
    );
  }
}