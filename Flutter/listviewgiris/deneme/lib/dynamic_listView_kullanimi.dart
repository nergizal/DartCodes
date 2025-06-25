import 'package:deneme/views/ulke_card.dart';
import 'package:flutter/material.dart';

class DynamicListviewKullanimi extends StatefulWidget {
  const DynamicListviewKullanimi({super.key});

  @override
  State<DynamicListviewKullanimi> createState() => _DynamicListviewKullanimiState();
}

class _DynamicListviewKullanimiState extends State<DynamicListviewKullanimi> {

  List<String> ulkeler =["Türkiye", "Azerbaycan","Mısır","Filistin", "Singapur", "Arnavutluk", "Katar","Rusya"];
  String myTitle = "Dinamik Liste";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(myTitle) ,
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
        
      ),

      body: ListView.builder(itemCount: ulkeler.length,
      itemBuilder: (context,index){
        return UlkeCard (ulkeAdi: ulkeler[index],index: index,); //burdaki index for döngüsündeki i gibi davranır. 1 den başlayıp sıralıyor.
      },)
    );
  }
}

class BasicListTileListView extends StatelessWidget {
  const BasicListTileListView({
    super.key,
    required this.ulkeler,
  });

  final List<String> ulkeler;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ulkeler.length,
      itemBuilder: (BuildContext context, int index){
        return Card(
          child: Container(
            height: 100,
            alignment: Alignment.center,
            child:ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.deepPurple,
                foregroundColor: Colors.pinkAccent,
                child:Text("${index +1}"),
              ),
              title: Text(ulkeler[index]),
              subtitle: Text("${index + 1}. ülke"),
              trailing: Icon(Icons.arrow_forward_sharp),
            )
          ),
        );
      },);
  }
}

class Basic_Card_Listview extends StatelessWidget {
  const Basic_Card_Listview({
    super.key,
    required this.ulkeler,
  });

  final List<String> ulkeler;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: ulkeler.length,
    itemBuilder: (context,index){
     return Card(
      child:Padding(padding: EdgeInsets.all(8),
      child:SizedBox(
        height: 75,
        child:Row(
          children: [
            Text(ulkeler[index]),
            Spacer(),
            Icon(Icons.arrow_forward)
          ],
        )
      ),
      )
     );
    },);
  }
}