import 'package:flutter/material.dart';

class ImageandTabbar extends StatefulWidget {
  const ImageandTabbar({super.key});

  @override
  State<ImageandTabbar> createState() => _ImageandTabbarState();
}

class _ImageandTabbarState extends State<ImageandTabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Resim + Tabbar"),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
        body: Column(
          children: [
            //resim alanı
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://picsum.photos/id/1011/800/400"),
                  fit: BoxFit.cover,
                ),
              ),
              alignment: Alignment.bottomCenter,
              child: const Text(
                "ürün Başlığı",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  shadows: [Shadow(blurRadius: 8, color: Colors.black)],
                ),
              ),
            ),
            const TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,

              tabs: [
                Tab(text: "Açıklama"),

                Tab(text: "Yorumlar"),
                Tab(text: "Detay"),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Center(child: Text("Ürün açıklaması")),
                  Center(child: Text("Ürün yorumlar")),
                  Center(child: Text("Ürün detay")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
