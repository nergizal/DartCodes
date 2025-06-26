import 'package:flutter/material.dart';

class YatayListView extends StatefulWidget {
  const YatayListView({super.key});

  @override
  State<YatayListView> createState() => _YatayListViewState();
}

class _YatayListViewState extends State<YatayListView> {
  List<String> ilceler =["Bağcılar", "Bakırköy","Esenler","Kadoköy","Şile","Levent","Mecidiyeköy"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yatay listview"),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
      ),
      body:SizedBox(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
        itemCount: ilceler.length, itemBuilder:(context, index) {
          return Card(
            child: SizedBox(
              width: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(ilceler[index]),
                ],
              ),
            ),
          );
        },),
      ),
    );
  }
}
//Listview bütün alanı kaplar. Yatayda çalışıyorsan dikeyi sınırlandıracaksın. Listview'in height özelliği yok. Sizedbox ya da containerla bu özelliği sağladık.
//Sadece height ya da width vereceksek container yerine sizedbox kullan.