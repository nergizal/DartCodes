import 'package:flutter/material.dart';

class Expansiontilepage extends StatefulWidget {
  final PageStorageKey expansionKey;
  const Expansiontilepage({super.key, required this.expansionKey});

  @override
  State<Expansiontilepage> createState() => _ExpansiontilepageState();
}

class _ExpansiontilepageState extends State<Expansiontilepage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      key: widget.expansionKey,
      itemCount: 5,
      itemBuilder: (contex, index) {
        return ExpansionTile(
          key: PageStorageKey(index), //
          title: Text("Başlık ${index + 1}"),
          leading: Icon(Icons.wb_sunny),
          //tariling: sağ köşedeki iconu değiştirir
          initiallyExpanded: index == 0
              ? true
              : false, //açık kapalı olma durumu
          //maintainState içerik temizlensin mi
          //tilePAdding: başlık alanının içini doldurur
          //onExpansionChanged: (b){},
          children: [
            Container(
              height: 200,
              color: index % 2 == 0 ? Colors.black : Colors.deepPurpleAccent,
            ),
          ],
        );
      },
    );
  }
}
