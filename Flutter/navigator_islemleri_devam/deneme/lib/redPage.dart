import 'package:flutter/material.dart';

class Redpage extends StatefulWidget {
 const Redpage({super.key});

  @override
  State<Redpage> createState() => _RedpageState();
}

class _RedpageState extends State<Redpage> {
  late String name;

  @override
  void initState(){
    super.initState();
    name= "Nergiz";
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Red Page"),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Red Page", style: Theme.of(context).textTheme.headlineMedium),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
                foregroundColor: Colors.black,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed("/yellowPage2");
              },
              child: Text("Sarı sayfaya git"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.black,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed("/bluePage",arguments: name);
              },
              child: Text("Mavi sayfaya git"),
            ),
          ],
        ),
      ),
    );
  }
}
