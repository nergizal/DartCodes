import 'package:flutter/material.dart';

class CardListTileKullanimi extends StatefulWidget {
  const CardListTileKullanimi({super.key});

  @override
  State<CardListTileKullanimi> createState() => _CardListTileKullanimiState();
}

class _CardListTileKullanimiState extends State<CardListTileKullanimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card List Tile "),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Text("Güneş"),
                subtitle: Text("Güneş Alt Başlık"),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardOrnek extends StatelessWidget {
  const CardOrnek({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 300,
            child: Card(
              color: Colors.grey, // Kartın içini rengi
              elevation: 10,
              shadowColor: Colors.yellow, // Gölgelendirme Rengi
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
                side: BorderSide(color: Colors.pinkAccent, width: 1),
              ),
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Toplam Puan",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star, color: Colors.amber, size: 36),
                          Text(
                            "150",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 38,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
