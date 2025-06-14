import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  /* 
  Flutter 2015 yılında google tarafından duyuruldu.
  Cross bir platformdur. hem android hem ios'a çıktı alabilir.
  Tasarım ile kod aynı ekranda yapılır.
  Dart programlama dilini kullanır.

  Proje dizinleri:
  lib:Dart dosyalarının oluşturulduğu ana klasördür.
  pubspec.yaml: Resim,font ekleyebilidiğimiz ayrıca harici kütüphaneleri tanımladığımız uygulama ile ilgili tüm ayarların olduğu klasördür.

  Bizim iki ana widget'ımız vardır:
  1)StatelessWidget: Eğer bir sayfada etkileşim olmayacaksa bu widget kullanılır. Sayfa yenilenmeyecekse kullanılır. 
  Ör: Ürüne basıp detaya yönlendirmesi de buna girer.

  context: bu sayfa demektir. mesela şu an main.darttayız context şu an main.dart

  MaterialApp: Uygulamanın arsasıdır. Bir kere kullanılır.
  Home parametresi ana parametresidir. Alt yapılarının  onun içine yazarız.
  Ekranın sağ üst köşesindeki debug yazısını kaldırmak için MaterialApp içerisine şu eklenir:debugShowCheckedModeBanner: false

  sacaffold: Evimizin temelidir. birden fazla olabilir.
  İçerisindeki appBar parametresi ile uygulamamıza AppBar ekleyebiliriz:
  appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Softito Dersleri"),
          foregroundColor: Colors.white,
          centerTitle: false,

        ),


  body parametresi ile içerisinde sayfa tasaımındaki widgetlar eklenir


  Container: Kutu oluşturmak için kullanılır diğer adı da çerçevedir. child içine widget eklediğimiz parametresidir.İçindeki çocuk kadar yer kaplar eğer bunu değiştirmek istersen
  uzunluk ve yükseklik vermelisin. Aynı zamanda color yani arka plan rengini verdiğimiz özelliği vardır:
  Container(
          child: Text("Nergiz" *5),
          color: Colors.blue,
          width: 200,
          height: 200,
        ) ,


  Container'ın margin parametresi de vardır:
  -Her yerden aynı boşluk
    margin: EdgeInsets.all(20),


  -Eğer yatay ve dikey ayrı ayrı değerler vermek istiyorsak marginde 
  margin: EdgeInsets.symmetric(horizontal: 25, vertical: 45), // x eks:horizontal // vertical: 45 dikeyde 45 boşluk  ver demek 


  -Eğer sadece belli yerlere vermek istiyorsak:
  margin: EdgeInsets.only(top:50, left:36),

  
  Padding: İç boşluk anlamına gelir. container'ın içindeki çocuğu ile arasındaki boşluğu temsil eder.
  Margindeki tüm sisten ile aynıdır:
  padding: EdgeInsets.only(top:66),

  Decoration: container'a dekorasyon yapmak için kullanılır.
  BoxDecoration sınıfını alır. Eğer bunu tanımlarsanız artık color'ı bunun içinde tanımlamak zorundasınız.

  Decoration içerisine çerçeve koyabiliriz. Bunu da border parametresi ile yaparız.
  Border.all(color:Colors.greenAccent,width:12
  Bu özelllik bizden renk ve genişlik ister.

  

  Çocukları row içinde yatayda konumlandırmak için kullanılır:
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,




  
   */
}
////Scaffold oluştur. appbar ve başlık MyfirstWork başlık ortada yazı rengi yeşil olsun app back arka plan rengi mor . Container boyutlar en 400 boy 350 olaun 
//içine bir text joy memleketini yaz container'a çerçeve ekle sağ üst sol alta radius ver ve shadow ver.

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
        ),
        
        
        /*
        body: Container(
          color: Colors.yellow,
          height: 400,
          width:400,
          child: Column(
            crossAxisAlignment:
            CrossAxisAlignment.start,
            children: [
              Container( color: Colors.blue,
              width: 100,
              height:100,
              child: Text("Container 1"),
              ),
              Container(
                color: Colors.green,
                width:100,
                height:100,
                child:Text("Container 2"),
              ),
              Container(
                color: Colors.red,
                width:100,
                height:100,
                child:Text("Container 3"),
              ),
            ],
          ),
        )*/
        body: Column(
          children: [
            Row(
              mainAxisAlignment: 
              MainAxisAlignment.spaceBetween,
              
              children: [
              Container(
                child: Text("Container yan 1 "),
                color: Colors.yellow,
                height:130,
                width:130,
                ),
                Container(
                child: Text("Container yan 2 "),
                color: Colors.blue,
                height:130,
                width:130,
                ),
                Container(
                child: Text("Container yan 3 "),
                color: Colors.green,
                height:130,
                width:130,
                ),

                
            ],),
            
            Container(
                child: Text("Container dikey 4 "),
                color: Colors.deepOrange,
                height:130,
                width:130,
                ),
                Container(
                child: Text("Container dikey 5 "),
                color: Colors.teal,
                height:130,
                width:130,
                ),


                Row(children:[
                  Container(
                    color: Colors.amber,
                    child: Text("Yatay 1 container"),
                    height: 130,
                    width: 130,
                  )
                ]),
                Row(
                  mainAxisAlignment: 
                  MainAxisAlignment.center,
                  
                  children: [
                  Container(
                    child: Text("Yatay container 2"),
                    color: Colors.green,
                    height: 130,
                    width: 130,
                  )
                ],),
                Row(
                 mainAxisAlignment: 
                 MainAxisAlignment.end,
                  
                  children: [
                  Container(
                    child: Text("Yatay container 3"),
                    color: Colors.red,
                    height: 130,
                    width: 130,
              
                  )
                ],)
                
            


          ],
        ),

));
  }
}




class ContainerExp extends StatelessWidget {
  const ContainerExp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(height:450,
      width: 450,
      color: Colors.grey.shade200,
      child: Container(
        width:250 ,
        height: 250,
        color: Colors.yellow,
      )
          );
  }
}

class ExpStack extends StatelessWidget {
  const ExpStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Container(
        height: 300,
        width:300,
        color: Colors.pink,
    
      ),
      Container(
        height: 250,
        width:250,
        color:Colors.blue
      ),
      Container(
        height: 150,
        width: 150,
        color:Colors.purple,
    
      )
      ],
    
    );
  }
}


class MySecondExample extends StatelessWidget {
  const MySecondExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor:Colors.orange,
      title: Text("My First work"),
      foregroundColor: Colors.teal,
      ),
    
      body: Container(
        width: 400,
        height:350,
        margin: EdgeInsets.all(36),
        child: Icon(Icons.person, size:89,color: Colors.green,),
        decoration:BoxDecoration(
          color: Colors.brown,
          border: Border.all(color: Colors.cyan, width :13),
          borderRadius: BorderRadius.only(
            topLeft:Radius.circular(23),
            topRight: Radius.circular(23)
          ),
          boxShadow: [
            BoxShadow(color: Colors.grey. shade400,blurRadius:25, offset: Offset(14,28)),
          ],
        )
      )
    
    
     
    );
  }
}

class FirstExample extends StatelessWidget {
  const FirstExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Softito Dersleri"),
        foregroundColor: Colors.white,
        centerTitle: false,
    
      ),
      body:Mycontainer() ,
    );
  }
}

class Mycontainer extends StatelessWidget {
  const Mycontainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Nergiz"),
      width: 200,
      height: 200,
      margin: EdgeInsets.only(top:50, left:36),
      padding: EdgeInsets.only(top:66),//iç boşluk
      decoration:BoxDecoration(
        color: Colors.purple,
        border: Border.all(color:Colors.pinkAccent,width:12) ,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(23),
          topLeft: Radius.circular(23)),
          boxShadow: [
            BoxShadow(color:Colors.grey,
            offset: Offset(20, 20),blurRadius: 16,)
          ]
    ) ,
          );
  }
}