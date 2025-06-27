import 'package:flutter/material.dart';
import 'package:myproject_grid/models/ProductModel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Ornek1(),
    ) ; }
}




class Ornek1 extends StatefulWidget {

  const Ornek1({super.key});

  @override
  State<Ornek1> createState() => _Ornek1State();
}

class _Ornek1State extends State<Ornek1> {
  List< ProductModel> products =[
    ProductModel(name: "Maserati", imgUrl: ("resimler/1.png"), price: "1 Euro", time: "1 Days", ticket: "100.000",progress: "%96"),
    ProductModel(name: "Aprilla", imgUrl: ("resimler/2.png"), price: "1 Euro", time: "2 Days", ticket: "1000",progress: "%84"),
    ProductModel(name: "Apple Watch Ultra", imgUrl: ("resimler/3.png"), price: "1 Euro", time: "2 Days", ticket: "500",progress: "%80"),
    ProductModel(name: "Maserati Ghibli", imgUrl: ("resimler/4.png"), price: " 4 Euro", time: " 12 Days", ticket: "50.000",progress: "%46"),
    ProductModel(name: "GoPro Hero", imgUrl: ("resimler/5.png") ,price: "1 Euro", time: " 26 Days", ticket: "500",progress: "%20"),
    ProductModel(name: "Aprilla RSV4", imgUrl: ("resimler/6.png"), price: "2 Euro", time: "29 Days", ticket: "5.000",progress: "%96"),

  ];             





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Teknoloji"),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
      ),
      body: GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 2/3), //burdaki ratio oranı yatay/dikey demek //crossAxisCount: kaç tane yanyana olacağı
      itemCount:products.length, itemBuilder:(context, index) {
        
return Container(
  
  margin: EdgeInsets.all(10),
  
  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
  //color: Colors.red
  ),


  child: Column(
    children: [
      Container(
        
        alignment: Alignment.bottomCenter,
        
        height: 120,
        child: Text(products[index].name ,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),

        decoration: BoxDecoration(
          color:Colors.grey,
         image: DecorationImage(image: AssetImage(products[index].imgUrl),),
          
          
          ),
          

      
      ),
      Column(
        children: [
          Text("4 Euro", style: TextStyle(fontSize: 24, fontWeight:FontWeight.bold,color: Colors.grey),),
          SizedBox(height: 4,),

          Stack(
            children: [
              Container(
                height: 10,
                decoration: BoxDecoration(color:Colors.grey.shade100,borderRadius: BorderRadius.circular(10)),
              )
            ],
          )
        ],
      ),


      Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(color: Colors.white),
      ),

      Container(
        color: Colors.white,
        height: 80,
      ),
    ],
  ),


  







  );

        
  },)
    );
  }
}




class BuildCard extends StatelessWidget {
  const BuildCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: Colors.grey,
    );

    

  }
}

