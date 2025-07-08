import 'package:deneme/redpage.dart';
import 'package:flutter/material.dart';


class Navigation1 extends StatefulWidget {
  const Navigation1({super.key});

  @override
  State<Navigation1> createState() => _Navigation1State();
}

class _Navigation1State extends State<Navigation1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigator islemleri"),
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red.shade400,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RedPage()),
                );
              },
              child: Text("Kırmızı sayfaya git"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 219, 143, 169),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(),
              ),
              onPressed: () {},
              child: Text("Sonraki Button"),
            ),
          ],
        ),
      ),
    );
  }
}