import 'package:design_devam/sayfa_bir.dart';
import 'package:design_devam/sayfa_iki.dart';
import 'package:design_devam/sayfa_uc.dart';
import 'package:flutter/material.dart';

class TabbarKullanimi extends StatefulWidget {
  const TabbarKullanimi({super.key});

  @override
  State<TabbarKullanimi> createState() => _TabbarKullanimiState();
}

class _TabbarKullanimiState extends State<TabbarKullanimi> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, 
    child: Scaffold(
      appBar: AppBar(
        title: Text("TabBar"),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.black,
        bottom: TabBar(
          indicatorColor: Colors.black, //alt çizgi rengi
          indicatorWeight: 5, //alt çizgi klaınlığı
          labelColor: Colors.deepOrange,//seçilen tab rengi
          unselectedLabelColor: Colors.black, //seçilmeyen tab rengi
          tabs: [
            Tab(
              child: Icon(Icons.looks_one),
            ),
            Tab(
              child: Icon(Icons.looks_two),
            ),
            Tab(
              child: Icon(Icons.looks_3),
            )
          ]) ,
      ),
      body:TabBarView(children: [
        Sayfa1(),
        Sayfa2(),
        Sayfa3(),
      ])
    ),);
  }
}

//Tabs kullanılarak aynı ekranda birden fazla sayfayı gösterebiliriz.
//Tablayara tıklayarak veya parmak hareketi sağ sol ile sayfalar arasında geçiş yapabiliriz.