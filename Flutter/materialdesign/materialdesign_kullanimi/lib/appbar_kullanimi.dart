import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppbarKullanimi extends StatefulWidget {
  const AppbarKullanimi({super.key});

  @override
  State<AppbarKullanimi> createState() => _AppbarKullanimiState();
}

class _AppbarKullanimiState extends State<AppbarKullanimi> {
  bool aramaYapiliyorMu = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        title: aramaYapiliyorMu
            ? TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.white),
                  hintText: "Arama için birşey girin",
                ),
                /* // Anlık olarak veri tabanına bağlanıp önerirler sunar
                onChanged: (aramaGirdisi) {
                  debugPrint("Arama Sonucu $aramaGirdisi");
                },*/
                onSubmitted: (value) {
                  // Entera basılınca arama gerçekleşir.
                  print("Sonuç: $value");
                },
              )
            : Text("AppBar Arama"),
        actions: [
          aramaYapiliyorMu
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      aramaYapiliyorMu = false;
                    });
                  },
                  icon: Icon(Icons.cancel),
                )
              : IconButton(
                  onPressed: () {
                    setState(() {
                      aramaYapiliyorMu = true;
                    });
                  },
                  icon: Icon(Icons.search),
                ),
        ],
      ),
    );
  }
}

class PopUpMenuAppBar extends StatelessWidget {
  const PopUpMenuAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle
            .light, // Beyaz ikonlar ve transparent arka plan
        backgroundColor: Colors.orange,
        title: Column(
          children: [
            //Sefia Are
            //SafeArea(child: Container(bool ),),
            Text(
              "Başlık",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Alt Başlık",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ],
        ),
        centerTitle: false,
        leading: IconButton(
          onPressed: () {
            print("Menü tıklandı");
          },
          icon: Icon(Icons.dehaze),
        ),

        actions: [
          TextButton(
            onPressed: () {
              print("Çıkış Yapıldı");
            },
            child: Text("Çıkış", style: TextStyle(color: Colors.white)),
          ),
          IconButton(
            onPressed: () => print("Bilgi Alındı"),
            icon: Icon(Icons.info_outline),
          ),
          PopupMenuButton(
            child: Icon(Icons.more_vert),
            itemBuilder: (context) => [
              PopupMenuItem(child: Text("Güncelle"), value: 1),
              PopupMenuItem(child: Text("Sil"), value: 2),
            ],
            onSelected: (gelenDeger) {
              if (gelenDeger == 1) {
                debugPrint("Güncellendi");
              }
              if (gelenDeger == 2) {
                debugPrint("Silindi");
              }
            },
          ),
        ],
      ),
    );
  }
}

class AppBarNormal extends StatelessWidget {
  const AppBarNormal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Column(
          children: [
            //Sefia Are
            //SafeArea(child: Container(bool ),),
            Text(
              "Başlık",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Alt Başlık",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ],
        ),
        centerTitle: false,
        leading: IconButton(
          onPressed: () {
            print("Menü tıklandı");
          },
          icon: Icon(Icons.dehaze),
        ),

        actions: [
          TextButton(
            onPressed: () {
              print("Çıkış Yapıldı");
            },
            child: Text("Çıkış", style: TextStyle(color: Colors.white)),
          ),
          IconButton(
            onPressed: () => print("Bilgi Alındı"),
            icon: Icon(Icons.info_outline),
          ),
          IconButton(
            onPressed: () => debugPrint("Menü Açıldı"),
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
    );
  }
}
