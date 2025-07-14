import 'package:flutter/material.dart';
import 'package:ornek_proje/widgets/expansionTilePage.dart';
import 'package:ornek_proje/widgets/filter_menu_with_chips.dart';
import 'package:ornek_proje/widgets/imageand_tabbar.dart';
import 'package:ornek_proje/widgets/listeornek.dart';
import 'package:ornek_proje/widgets/nested_tabbar.dart';
import 'package:ornek_proje/widgets/pageView_page.dart';
import 'package:ornek_proje/widgets/setting_expansion_menu.dart';
import 'package:ornek_proje/widgets/simple_image_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FilterMenuWithChips(),
    );
  }
}

class MyProject extends StatefulWidget {
  const MyProject({super.key});

  @override
  State<MyProject> createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProject> {
  late List<Widget> sayfalar;
  int bottomIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    sayfalar = [
      Listeornek(listKey: keylist),
      //Expansiontilepage(expansionKey: keyExpansion),
      SettingExpansionMenu(),
      //PageviewPage(),
      SimpleImageSlider(),
    ];
  }

  var keylist = PageStorageKey("key liste");
  var keyExpansion = PageStorageKey("key expansion");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tasarım Araçları"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: sayfalar[bottomIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.pink,
        currentIndex: bottomIndex,
        onTap: (index) {
          setState(() {
            bottomIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Liste"),

          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Expansion",
          ),

          BottomNavigationBarItem(icon: Icon(Icons.pages), label: "PageView"),
        ],
      ),
    );
  }
}


//showselected label true false 