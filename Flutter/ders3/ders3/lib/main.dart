import 'package:flutter/material.dart';

void main() {
  runApp(const MyProject());
}

class MyProject extends StatelessWidget {
  const MyProject({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyExamples(),
      debugShowCheckedModeBanner: false,
    );
  }
}





class MyExamples extends StatelessWidget {
  const MyExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        foregroundColor: Colors.white,
        title: Text("Çalışma 2"),
        
      ),
      body: Example4(),

    );
  }
}

 //bi bilgi var ama*


class Example4 extends StatelessWidget {
  const Example4({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> myImages =[
      "lale.jpg",
      "lilyum.jpg",
      "lotus.png",
      "nergis.jpg"
    ];
    final imageFolder = "images/";
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              height: 200,
              child:Image.asset(imageFolder+myImages[0])
            )        ),
        ],
      ),Divider(color: Colors.black,),
      
      
      Row(children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              height: 200,
              child:Image.asset(imageFolder+myImages[1])
            )        ),
        ],
      ),Divider(color: Colors.black,),
      
      Row(children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              height: 200,
              child:Image.asset(imageFolder+myImages[2])
            )        ),
        ],
      ),Divider(color: Colors.black,),
      
      Row(children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              height: 200,
              child:Image.asset(imageFolder+myImages[3])
            )        ),
        ],
      ),Divider(color: Colors.black,),
      ],
      
      ),
    );
  }
}



class Example3 extends StatelessWidget {
  const Example3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      child: Image.asset("images/lotus.png",
      fit: BoxFit.cover,
      )
    );
  }
}


class Example1 extends StatelessWidget {

  const Example1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 14.0),
          child: Text("Örnek 1"),
        ),
        Row(
          children: [
            Expanded(
              flex:3,
              child: Container(
                alignment: Alignment.center,
                color: Colors.red,
                height: 180,
                child: Text("Ben %30"),
              ),
            ),
            Expanded(
              flex:7,
              child: Container(
                 alignment: Alignment.center,
                color: Colors.teal,
                height: 180,
                child: Text("Ben %70"),
              ),
            ),
          ],
        ),
      Divider(color: Colors.red, thickness: 8,),
Row(
  children: [
    Expanded(
      flex:2,
      child: Container(
        alignment: Alignment.center,
        color: Colors.purple,
        height: 200,
        child : Text(" Ben % 20"),
      ),
    ),
    Expanded(
      flex:3,
      child: Container(
        alignment: Alignment.center,
        color: Colors.pink,
        height: 200,
        child : Text(" Ben % 30"),
      ),
    ),
    Expanded(
      flex:5,
      child: Container(
        alignment: Alignment.center,
        color: Colors.green,
        height: 200,
        child : Text(" Ben % 50"),
      ),
    ),
  ],
)

  ],
    );
  }
}

class Example2 extends StatelessWidget {
  const Example2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Başlık bölüm başlangıç
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 14),
              child: Align(
                child: Text("Telefon Listesi",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                )
                
                ),
            ),
            Divider(indent: 36,endIndent: 36,),
          ],
        ),
        //Başlık bölüm bitiş
        

        //içerik başlangıç
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 18,horizontal: 30),
            child: SingleChildScrollView(
              child: Column(
                children: [ 
                  MyCard(name: "Nergiz Alıci",firstIcon: Icons.abc,lastIcon: Icons.ac_unit_rounded,),
                  
                 
                ],
              ),
            ),
          ),
        )
        //içerik bitiş.
       ],
    );
  }
}

class MyCard extends StatelessWidget {
  final String name;
  final IconData firstIcon;
  final IconData lastIcon;

  const MyCard({
    required this.name, 
    required this.firstIcon,
    required this.lastIcon
  });





  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Expanded(
            child: Container(
              height: 130,
              decoration: BoxDecoration(
                color:Colors.grey.shade400,
                border: Border.all(color: Colors.blueGrey,width: 5),
                borderRadius: BorderRadius.circular(18), // köşeleri yuvarlak yapıyor
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                   
                    padding: EdgeInsets.all(9),
                    decoration: BoxDecoration(color:const Color.fromARGB(255, 186, 127, 162),borderRadius: BorderRadius.circular(100)
                    ),
                    child:Icon(firstIcon,color:Colors.black87,size:56),
                  ),
                 //yazı alanı
                 Text(name,style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                 ),
                 ),
        
                 Icon(lastIcon,
                 color:Colors.black,
                 size:36,
                 ),
              ],),
            ),
          ),
        ],),
      SizedBox(height: 10,),
      ],
    );
  }
}
