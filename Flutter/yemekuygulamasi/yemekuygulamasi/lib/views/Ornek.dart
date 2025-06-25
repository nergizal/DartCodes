import 'package:flutter/material.dart';
import 'package:yemekuygulamasi/models/eat.dart';
import 'package:yemekuygulamasi/views/Ornekdetay.dart';

class Ornek extends StatelessWidget {
  const Ornek({super.key});

  @override
  Widget build(BuildContext context) {
    String mainUrl = "resimler";
    Eat e1= Eat(name: "Izgara Köfte", imgUrl: "$mainUrl/y1.png", detay: "Izgara köfte çok severim", price: 350);
    Eat e2= Eat(name: "Karışık Kebap", imgUrl: "$mainUrl/y2.png", detay: "Karışık kebap çok severim,çok güzeldir.", price: 1200);
    Eat e3= Eat(name: "Kuzu Şiş", imgUrl: "$mainUrl/y3.png", detay: "Kuzu şiş çok severim", price: 900);
    Eat e4= Eat(name: "Sarma Ciğer", imgUrl: "$mainUrl/y4.png", detay: "Sarma Ciğer çok severim", price: 750);
    Eat e5= Eat(name: "Tantuni", imgUrl: "$mainUrl/y5.png", detay: "Tantuni çok severim, çok güzeldir", price: 450);
    Eat e6= Eat(name: "İskender", imgUrl: "$mainUrl/y6.png", detay: "İskender çok severim", price: 530);
    Eat e7= Eat(name: "Mumbar", imgUrl: "$mainUrl/y7.png", detay: "Mumbar sevmme", price: 600);
    Eat e8= Eat(name: "Kokoreç", imgUrl: "$mainUrl/y8.png", detay: "kokoreç sevmem", price: 280);
    Eat e9= Eat(name: "Kuzu Tandır", imgUrl: "$mainUrl/y9.png", detay: "Kuzu tandır çok severim", price: 670);
    Eat e10= Eat(name: "Lahmacun", imgUrl: "$mainUrl/y10.png", detay: "Lahmacun çok severim", price: 150);
    Eat e11= Eat(name: "Karışık Pide", imgUrl: "$mainUrl/y11.png", detay: "Karışık Pide çok severim", price: 340);

    List<Eat> eaters=[e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11];



    return Scaffold(
      appBar: AppBar(
        title: Text("Yemek Sepeti",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,color:Colors.black87 ),),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
      ),

      body:MyEatList(eaters: eaters),
    );
  }
}


class MyEatList extends StatefulWidget {
  final List<Eat> eaters;
  const MyEatList({required this.eaters});

  @override
  State<MyEatList> createState() => _MyEatListState();
}

class _MyEatListState extends State<MyEatList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount:widget.eaters.length, itemBuilder:(context, index) {
      return EatersCard(eaters: widget.eaters[index],);
    },);
  }
}


class EatersCard extends StatefulWidget {
  final Eat eaters;
  const EatersCard({required this.eaters});

  @override
  State<EatersCard> createState() => _EatersCardState();
}

class _EatersCardState extends State<EatersCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Container(
          alignment: Alignment.center,
          height: 100,
          child: ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Ornekdetay(eaters: widget.eaters)));
            },
            leading: CircleAvatar(
              backgroundImage: AssetImage(widget.eaters.imgUrl),
            ),
            title: Text(widget.eaters.name),
            subtitle: Text(widget.eaters.price.toString()),
            trailing: Icon(Icons.food_bank_outlined),
          ),
        ),
      ),
    );
  }
}