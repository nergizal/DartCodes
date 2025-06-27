
import 'package:design_devam/models/yemek.dart';
import 'package:flutter/material.dart';

class YemekDetay extends StatefulWidget {
  final Yemek yemek;
  const YemekDetay({required this.yemek});

  @override
  State<YemekDetay> createState() => _YemekDetayState();
}

class _YemekDetayState extends State<YemekDetay> {
  bool isDone=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.yemek.yemekAdi), //dinamik çağırıyoruz.
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
      ),

      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             SizedBox(
              width: 340,
              height: 200,
              child: Image.asset(widget.yemek.yemekResimAdi),
             ),

             Padding(padding: EdgeInsets.only(top:20,bottom: 10),
             child: Text(widget.yemek.yemekAdi, style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
             Text("${widget.yemek.yemekFiyat} ₺",style: TextStyle(fontSize: 16,color:Colors.black45),),
           SizedBox(height: 100,),
             ElevatedButton(onPressed: (){
              setState(() {
                isDone=!isDone;
              });
             }, child: Text(isDone ? "Sipariş Alınıdı" :"Sipariş Ver"),
             style: ElevatedButton.styleFrom(
              backgroundColor:isDone ? Colors.green: Colors.blue,
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 12,horizontal: 125),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              )
             )
             )
          ],
        ),
      )
    );
  }
}