import 'package:design_devam/sayfa_bir.dart';
import 'package:design_devam/sayfa_iki.dart';
import 'package:design_devam/sayfa_uc.dart';
import 'package:flutter/material.dart';

class DrawerKullanimi extends StatefulWidget {
  const DrawerKullanimi({super.key});

  @override
  State<DrawerKullanimi> createState() => _DrawerKullanimiState();
}

class _DrawerKullanimiState extends State<DrawerKullanimi> {
  int secilenIndex=0;
  List<Widget> sayfaListesi=[Sayfa1(),Sayfa2(),Sayfa3()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Kullanımı"),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,

      ),
      body:sayfaListesi[secilenIndex],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(child:Text("Başlık",style: TextStyle(color: Colors.black,fontSize: 24),),
            ),
            ListTile(
              onTap: () {
                setState(() {
                  secilenIndex=0;
                  Navigator.pop(context);
                });
              },
              leading: Icon(Icons.person),
              title: Text("Profilim"),
            ),
            ListTile(
              onTap: () {
                setState(() {
                  secilenIndex=1;
                  Navigator.pop(context);
                });
              },
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              onTap:(){
                setState(() {
                  secilenIndex=2;
                  Navigator.pop(context);
                });
              } ,
              leading: Icon(Icons.settings),
              title: Text("Ayarlar"),
            ),




          ],
        ),
      ),

    
    );
  }
}



//drawerda stateful olmalı
//bir şeyi boyutlandırmak için sized box kullanıp boyutlandırabilirsin. 