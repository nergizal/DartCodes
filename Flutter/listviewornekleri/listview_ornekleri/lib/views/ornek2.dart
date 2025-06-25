import 'package:flutter/material.dart';

class Ornek2 extends StatelessWidget {
  const Ornek2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sevdiğim Tatlılar"),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body:Tatlilar(),
    );
  }
}

class Tatlilar extends StatefulWidget {
  
  const Tatlilar({super.key});

  @override
  State<Tatlilar> createState() => _TatlilarState();
}

class _TatlilarState extends State<Tatlilar> {
  List<String> tatlilar =["Sütlaç", "Profiterol", "Kazandibi", "Browni","Fıstıklı Baklava","Keşkül","Dubai Çikolatası"];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: tatlilar.length, itemBuilder:(context,index){
        return TatlilarKard(tatli: tatlilar[index],index: index,);
    });
  }
}

class TatlilarKard extends StatefulWidget {
  final String tatli;
  final int index;
  const TatlilarKard({required this.tatli, required this.index});

  
  

  @override
  State<TatlilarKard> createState() => _TatlilarKardState();
}

class _TatlilarKardState extends State<TatlilarKard> {
  @override

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child:ListTile(
          leading: CircleAvatar(
            child: Text("${widget.index + 1}"),
          ),
         title: Text(widget.tatli, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
          
          trailing: Icon(Icons.cookie),
          
        )
      ),
    );
  }
}



//ana widgetın builder üzerine liste tanımladık tatlıları oraya listeledim