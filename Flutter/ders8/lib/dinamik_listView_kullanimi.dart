import 'package:ders9/views/ulke_card.dart';
import 'package:flutter/material.dart';

class DinamikListviewKullanimi extends StatefulWidget {
  const DinamikListviewKullanimi({super.key});

  @override
  State<DinamikListviewKullanimi> createState() => _DinamikListviewKullanimiState();
}

class _DinamikListviewKullanimiState extends State<DinamikListviewKullanimi> {
  List<String> ulkeler =["Türkiye","Germany","Hungary","South Korea","Japan","UAE","Georgia",];
  String myTitle = "Dinamik ListView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 30, 54),
        foregroundColor: const Color.fromARGB(255, 164, 203, 236),
        title: Text(myTitle ,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      ),
      body: ListView.builder(
        itemCount: ulkeler.length,
        itemBuilder: (context, index) {
          return UlkeCard();
        },
      )
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
      itemBuilder:(BuildContext context, int index){
        return Card(
          
          child: Container(
              height: 100,
              alignment: Alignment.center,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 7, 57, 99),
                  foregroundColor: const Color.fromARGB(255, 164, 203, 236),
                  child: Text("${index +1}"),
                ),
                title: Text(ulkeler[index]),
                subtitle: Text("${index+1}. ülke"),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
          ),
        );
      },
    );
  }
}

class BasicCardListView extends StatelessWidget {
  const BasicCardListView({
    super.key,
    required this.ulkeler,
  });

  final List<String> ulkeler;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ulkeler.length,
      itemBuilder: (context, index) {
        return Card(
          child: Padding(padding: 
          EdgeInsets.all(8.0),
          child: SizedBox(height: 75,
          child: Row(
            children: [
              Text(ulkeler[index]),
              Spacer(),
              Icon(Icons.keyboard_arrow_right),
            ],
          ),),
          ),
        );
      },
    );
  }
}