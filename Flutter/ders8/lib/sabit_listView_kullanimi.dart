import 'package:flutter/material.dart';

class SabitListviewKullanimi extends StatefulWidget {
  const SabitListviewKullanimi({super.key});

  @override
  State<SabitListviewKullanimi> createState() => _SabitListviewKullanimiState();
}

class _SabitListviewKullanimiState extends State<SabitListviewKullanimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sabit Liste"),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.wb_sunny),
            title: Text("Başlık"),
            subtitle: Text("Alt başlık"),
            trailing: Icon(Icons.keyboard_arrow_right),
            tileColor: Colors.amber,
            onTap: (){
              debugPrint("Listtile tıklandı");
            },
          ),
          GestureDetector(
            onTap: () {
              debugPrint("Card tıklanıldı");
            },
            child: Card(
              color: Colors.amber.shade300,
              child: SizedBox(
                height: 70,
                child: Row(
                  children: [
                    Text("Card Tasarımı"),
                    Spacer(),
                    Icon(Icons.more_vert)
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              debugPrint("Container tıklandı");
            },
            child: Container(
              child: Text("Merhaba"),
              height: 70,
              color: Colors.amber.shade100,
            ),
          ),
        ],
      ),
    );
  }
}