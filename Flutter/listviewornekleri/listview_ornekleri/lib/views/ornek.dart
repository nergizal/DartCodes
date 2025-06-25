import 'package:flutter/material.dart';

class Ornek1 extends StatelessWidget {
  const Ornek1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Örnekleri"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body:RehberUygulamasi(),
    );
  }
}

class RehberUygulamasi extends 
StatefulWidget {
  const RehberUygulamasi({super.key});

  @override
  State<RehberUygulamasi> createState() => _RehberUygulamasiState();
}

class _RehberUygulamasiState extends 
State<RehberUygulamasi> {
  List<String> kisiler =["Nergiz Alıci", "Asya Alıci", "Müslüm Alıci", "Deniz Alıci","Nefise Gören","Selin Yılmaz","İrem Alıci","Helin Şahin"];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: 8, itemBuilder:(context,index){
      return KisilerCard(kisi:kisiler[index],
        
      );
    });
  }
}

class KisilerCard extends StatefulWidget {
  final String kisi;
   KisilerCard({required this.kisi});

  @override
  State<KisilerCard> createState() => _KisilerCardState();
}

class _KisilerCardState extends State<KisilerCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage("resimler/1.png"),
        ),
        title: Text(widget.kisi, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
        subtitle: Text("05416771591",style: TextStyle(fontSize: 16,color: Colors.black45),),
        trailing: Icon(Icons.keyboard_arrow_right),
      ),
    );
  }
}