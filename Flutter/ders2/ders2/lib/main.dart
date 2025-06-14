import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Ornek(),
    );
  }
}


class Ornek extends StatelessWidget {
  const Ornek({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Align Example"),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),

      body: Column(
        children: [
          MaviKare(),
          SizedBox(height: 15),
          KirmiziKare(),
          SizedBox(height: 15),
          MyText("Merhaba Flutter"),
        ],
      )
    );
  }
}




class MaviKare extends StatelessWidget {
  const MaviKare({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Colors.blue,
      height: 100,
      width: 100,
    );
}

}


class KirmiziKare extends StatelessWidget {
  const KirmiziKare({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: 120,
      width: 120,
    );
  }
}


class MyText extends StatelessWidget {
  final String yazi;
  MyText(this.yazi);

  @override
  Widget build(BuildContext context) {
    return Text(yazi);  }
}


/*
Özelleşmiş Widget:






Expanded sadece row ve columun elemanlarında kullanılır. Row ve column tarla sahibidir, sadece satın aldığım arazimde çalışıcam demek gibidr.
Expanded: Eğer bizim widgetlarımız row ya da column
Row(children: [
        Expanded(
          flex: 2,
          child: Container(
            width: 150,
            height: 150,
            color: Colors.red,
          ),
        ),
        Expanded(
          flex:3,
          child: Container(
            width: 150,
            height: 150,
            color: Colors.blue,
          ),
        )
      ],)
    );


Örnek:
Column(children: [
        Expanded(
          child: Container(
            color: Colors.red,
            height:120,
            width: 120,
          
          ),
        ),
        Container(
          color: Colors.orange,
          height:120,
          width: 120,




        )
      ],)





Örnek:
Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
        Expanded(
          flex:3,
          child: Container(
            color: Colors.red,
            height:120,
            width: 120,
          
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.orange,
            height:120,
            width: 120,
          
          
          
          
          ),
        )
      ],)


Örnek:
Row(
        children: [
          Expanded(
            child: Container(
              height:250,
              width: 250,
              color: Colors.deepPurpleAccent,
            
            ),
          ),
          Container(
            height:250,
            width: 250,
            color: Colors.black45,
          
          )
        ],
      )


Örnek:
Row(children: [
        Flexible(
          flex:2,
          child: Container(
          color: Colors.purple,
          height: 200,
          width: 175,
                ),
        ),
      Flexible(
        child: Container(
          color: const Color.fromARGB(255, 112, 17, 49),
          height: 200,
          width: 175,
        ),
      )
      ],)

Padding: Bu özelliği olmayan widgetlar için kullanılır.


Spacer. İki obje arasındaki tüm boşluğu kullanarak ayırır
Column(
        children: [
          Container(
            height: 140,
            width: 140,

            color: Colors.black87
          ),
          Spacer(),
          Container(
            height: 100,
            width: 100,

            color: Colors.brown
          ),
          Container(
            height: 120,
            width: 120,

            color: Colors.green
          ),
        ],
      ),








Sizebox: özellikleri arasında height ve width olmayan widgetlara boyut özelliği  kazandırır.
Örnek1:
Column(
        children: [
          Row(
            children: [
            Container(
              height:160,
              width: 160,
              color:Colors.redAccent,
            ),
          SizedBox(
            width: 20,
          ),
            Container(
              height:160,
              width: 160,
              color:Colors.blueAccent,
            ),
            
          
          
          
          ],),
          SizedBox(height: 40),
          Container(
              height: 200,
              width: 200,
              color: Colors.yellow, 
          )
        ],
      ),



Örnek2:
Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center ,
          
          children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
        
          SizedBox(
            height:200,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.brown,
          ),
        ],),
      )




Align widget içine aldığı widget'ı parent'ın boyutları dahilinde konumlandırır.
Align Örnek 1:
Container(
        height:160,
        width: 160,
        color: const Color.fromARGB(255, 182, 98, 126),
        child : Align(
          alignment: Alignment.bottomRight,
          child: Text("Yazı")),

      ),



Align Örnek 2:
Align(
        alignment: Alignment.topRight,
        child: Container(
          height:160,
          width: 160,
          color: const Color.fromARGB(255, 182, 98, 126),
          child : Text("Yazı")
        
        ),
      ),



Align Örnek 3:
Container(
        height: 500,
        width: 320,
        color:const Color.fromARGB(255, 109, 130, 187),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            height:160,
            width: 160,
            color: const Color.fromARGB(255, 182, 98, 126),
            child : Text("Yazı")
          
          ),
        ),
      )


Align örnek 4:

Align(
        alignment: Alignment.bottomLeft,
        child: Container(
          height: 500,
          width: 320,
          color:const Color.fromARGB(255, 109, 130, 187),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height:160,
              width: 160,
              color: const Color.fromARGB(255, 182, 98, 126),
              child : Text("Yazı")
            
            ),
          ),
        ),
      ),



Align Örnek 5:
ontainer(
        height: 300,
        width: 300,
        color: Colors.purple,
        child :Column(
          children: [
            Container(
              color: Colors.blue,
              height:150,
              width:300,
              
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text("Yazı 1"))),
            Container(
              height: 150,
              width: 300,
              color: Colors.green,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text("Yazı 2"))),
          

          ],
        )
      )



Align örnek 6:
Container(
        height: 300,
        width: 300,
        color: Colors.teal,
        child: Align(
          alignment: Alignment(1,-1),
          child: Text(" Yazı "))
      )



class MyProjectHomework extends StatelessWidget {
  const MyProjectHomework({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(backgroundColor: Colors.deepOrange,
        title: Text("Örnek 1 "),
        centerTitle: true,
        foregroundColor: Colors.white,
        titleTextStyle: TextStyle(
          fontSize: 42,
          fontWeight: FontWeight.bold
        ),
        ),




      /* Özet:

        body ana ekran içeriği.
        Dikey olarak widget’lar Column ile diziliyor (burada sadece 1 tane Container).
        O Container, içinde yatayda eşit aralıklarla dizilmiş 2 kutu (Row).
        Kutuların içinde renkli arka plan ve hizalanmış metinler var.
        Ayrıca dış boşluk ve iç boşluk (margin & padding) ayarları yapılmış.
 */
        
      //body ana ekranın içeriğini belirtir.
      //içinde bir column var, yani dikey şekilde widgetlar üst üste yerleştiriliyor.
      //Column İçeriği:
      body: SingleChildScrollView(
        child: Column(
          children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),    //EdgeInsets.symmetric: Dikey (vertical) ve yatay (horizontal) olarak simetrik boşluk ayarlamak için kullanılır.vertical: 20 demek, widget'ın üstünden ve altından 20 piksel boşluk bırak demek
            ///Container’ın içinde yatayda yan yana dizilen widget’lar var.
          child: Row(
            //Row içindeki çocuklar yatayda eşit aralıklarla (spaceEvenly) dağıtılır.
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Container(
              child: Text("Sol alt yazı "),
              color: Colors.green,
              height: 150,
              width: 150,
              //İçindeki metin sol alt köşeye hizalanır.
              alignment: Alignment.bottomLeft,
              // Metnin etrafında soldan 8 ve alttan 12 piksel boşluk (padding) bırakılır.
              padding: EdgeInsets.only(left: 12, bottom: 12),
            ),
            Container(
              color: Colors.red,
              width: 150,
              height: 150,
              child: Text("Sağ üst yazı "),
              //İçindeki metin sağ üst köşeye hizalanır.
              alignment: Alignment.topRight,
              padding: EdgeInsets.only(right: 8, top: 12),
            ),
          ],
        ),
            ),
        
        
        
            Container(

              alignment:Alignment.center,
              height: 140,
              width:150,


            )  
          ],
        ),
      ),

        
       
        
      );

  }
}
*/
  