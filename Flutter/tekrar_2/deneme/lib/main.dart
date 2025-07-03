import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Tekrari());
  }
}

class Tekrari extends StatefulWidget {
  const Tekrari({super.key});

  @override
  State<Tekrari> createState() => _TekrariState();
}

class _TekrariState extends State<Tekrari> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            surfaceTintColor: Colors.white,
            floating: true,
            pinned: true,
            snap: true,
            title: Text("SliverAppBar"),
            backgroundColor: Colors.white,
            expandedHeight: 200,
            foregroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              //itle: Text("İstanbul Kart"),
              background: Image.asset("resimler/logo.png"),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(childCount: 20, (
              context,
              index,
            ) {
              return Container(
                height: 75,
                child: Text("Elaman ${index + 1}"),
                color: Colors.teal[(((index + 1) % 8) + 1) * 100],
              );
            }),
          ),

          SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 30),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              delegate: SliverChildListDelegate([
                sabitGridViewEleman(Colors.grey),
                sabitGridViewEleman(Colors.blue),
                sabitGridViewEleman(Colors.pink),
                sabitGridViewEleman(Colors.purple),
                sabitGridViewEleman(Colors.yellow),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  Container ornek() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green, width: 5),
      ),
      child: GridView.builder(
        itemCount: 25,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          crossAxisSpacing: 25,
          mainAxisSpacing: 20,
          maxCrossAxisExtent: 220,
        ),
        itemBuilder: (context, index) {
          return dinamikGridElemani(index);
        },
      ),
    );
  }

  GridView gridViewExtendOrnek() {
    return GridView.extent(
      maxCrossAxisExtent: 300,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      children: [
        sabitGridViewEleman(Colors.pink),
        sabitGridViewEleman(Colors.purple),
        sabitGridViewEleman(Colors.deepOrange),
        sabitGridViewEleman(Colors.greenAccent),
        sabitGridViewEleman(Colors.yellowAccent),
        sabitGridViewEleman(Colors.redAccent),
        sabitGridViewEleman(Colors.lightBlueAccent),
        sabitGridViewEleman(Colors.grey),
      ],
    );
  }

  Widget sabitGridViewEleman(Color bgColor) {
    return Container(
      color: bgColor,
      child: Center(child: Text("Grid Eleman")),
    );
  }

  Widget dinamikGridElemani(int index) {
    return Container(
      child: Text("Eleman ${index + 1}"),
      color: Colors.teal[(((index + 1) % 8) + 1) * 100],
    );
  }
}

SizedBox sabitEleman() {
  return SizedBox(
    height: 100,
    child: Container(
      margin: EdgeInsets.all(12),
      color: Colors.grey,
      child: Center(
        child: Text("Sabit eleman", style: TextStyle(fontSize: 18)),
      ),
    ),
  );
}
