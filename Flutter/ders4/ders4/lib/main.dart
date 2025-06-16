import 'package:flutter/material.dart';

void main() {
  runApp(const MyProject());
}

class MyProject extends StatelessWidget {
  const MyProject({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyExamples(), debugShowCheckedModeBanner: false);
  }
}

class MyExamples extends StatelessWidget {
  const MyExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 190, 80, 209),
        foregroundColor: Colors.white,
        title: Text("Çalışma "),
      ),
      body: Example6(),
    );
  }
}

class Example10 extends StatelessWidget {
  const Example10({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              //controller: içindeki veriyi değişkene aktarmak için kullanılır
              //style özelliği içerisine yazılan yazı ile ilgilidir.
              style:TextStyle(color: Colors.black,fontSize: 24),
              //obscureText: true, //şifreleme yapar
              //keyboardType: TextInputType.number,
              maxLength: 11,// girilecek max karakteri sınırlar
              decoration: InputDecoration(
                label: Text("Ad "),
                labelStyle: TextStyle(color: Colors.black,fontSize: 20),
                filled:true, // arka plan rengine izin verir
                fillColor: const Color.fromARGB(255, 215, 210, 210),
                border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width:3),
                borderRadius: BorderRadius.circular(14)
            
              ),
                   // hintText: "Email",
                    //hintStyle: TextStyle(
                      //color: Colors.amber,
                    //)
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              //controller: içindeki veriyi değişkene aktarmak için kullanılır
              //style özelliği içerisine yazılan yazı ile ilgilidir.
              style:TextStyle(color: Colors.black,fontSize: 24),
              //obscureText: true, //şifreleme yapar
              //keyboardType: TextInputType.number,
              maxLength: 11,// girilecek max karakteri sınırlar
              decoration: InputDecoration(
                label: Text("Soyad"),
                labelStyle: TextStyle(color: Colors.black,fontSize: 20),
                filled:true, // arka plan rengine izin verir
                fillColor: const Color.fromARGB(255, 215, 210, 210),
                border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width:3),
                borderRadius: BorderRadius.circular(14)
            
              ),
                   // hintText: "Email",
                    //hintStyle: TextStyle(
                      //color: Colors.amber,
                    //)
              ),
            ),
          ),
          Text("Nergiz Yazılım Mühendisliği",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.grey,
            //letterSpacing: 10, harfler arası boşluk
            //wordSpacing: 23, kelimeler arasındaki boşluk
            //decoration: TextDecoration.lineThrough  üzerini çiziyor
          ),
          
          ),
        ],
      ),
    );
  }
}

//Icon button
class Example9 extends StatelessWidget {
  const Example9({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(onPressed: (){}, icon: Icon(Icons.add, size:48,),
      
      ),
    );
  }
}

//Text Button
class Example8 extends StatelessWidget {
  const Example8({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(onPressed: (){}, child: Text("Text Button",style: TextStyle(fontSize: 30),),
          style: TextButton.styleFrom(
            foregroundColor: Colors.red,
            padding: EdgeInsets.symmetric(vertical: 25,horizontal: 25),
          ),
          ),
          
        ],
      ),
    );
  }
}

//Buttons
//elevated button
class Example7 extends StatelessWidget {
  const Example7({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            print("Tıklandı");
          }, child: Text("Tıkla",style: TextStyle(color: Colors.black, fontSize: 30),),
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrange,
              foregroundColor: Colors.white,
              textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),
              padding: EdgeInsets.symmetric(horizontal: 59,vertical: 20),
              shadowColor: Colors.black,
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(56)),
                side:BorderSide(color:const Color.fromARGB(255, 37, 37, 37), width: 5),
              ),
          ),
          
          ),
        ],
      ),
    );
  }
}

class MyText extends StatelessWidget {
  final String icerik;
  final double yaziBoyutu;
  final Color yaziRenk;
  final FontWeight fw;
  const MyText({
    this.icerik = "",
    this.yaziBoyutu = 14,
    this.yaziRenk = Colors.black,
    this.fw = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(icerik, style: TextStyle(color: yaziRenk, fontSize:yaziBoyutu,fontWeight: fw ));
  }
}

class EatCatolog extends StatelessWidget {
  const EatCatolog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 820,
      width: 430,
      child: Column(
        children: [
          //Resim alanı
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 300,
                  child: Image.network(
                    "https://i.nefisyemektarifleri.com/2023/05/02/ankarada-kebap-nerede-yenir-en-iyi-15-mekan.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          Container(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    height: 60,
                    color: Colors.red,
                    child: Text(
                      "Beğen",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            height: 60,
                            color: Colors.orange,
                            child: Text(
                              "Yorum yap",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          //Başlık kısmı
          Container(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 8),
                    height: 36,
                    child: Text(
                      "Köfte",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          //Alt Başlık Alanı
          SizedBox(
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.only(left: 6),
                    alignment: Alignment.centerLeft,

                    height: 36,
                    child: Text(
                      "Izgara üzernde pişirmeye uygun ",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),

                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.only(right: 6),
                    alignment: Alignment.centerRight,

                    height: 36,
                    child: MyText(icerik:"18 Ağustos ", yaziBoyutu: 16, yaziRenk: Colors.black,fw: FontWeight.normal,),
                  ),
                ),
              ],
            ),
          ),

          //Tarif Alanı
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              child: Text(
                "Kıymayı baharatlarla birlikte iyice yoğurun. Bu işlem, proteinin yapışkan hale gelmesini sağlar ve şişe daha iyi tutunmasına yardımcı olur.Adana kebabı için geniş ve düz metal şişler idealdir. Yuvarlak şişler kebabın düşmesine neden olabilir.Şişe kıymayı dizerken ellerinizi ıslatın. Bu, kıymanın elinize yapışmasını önler ve daha düzgün bir şekilde şişe yerleşmesini sağlar.Şişleri kullanmadan önce soğuk suyla ıslatın veya buzdolabında soğutun. Soğuk şişler, kıymanın şişe daha iyi yapışmasını sağlar ve düşmesini önler.Şişe dizilmiş kebapları mutlaka buzdolabında dinlendirin.Kebabı yüksek ısıda pişirin. Orta veya düşük ateş, kıymanın gevşemesine ve düşmesine neden olabilir.",
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Example6 extends StatelessWidget {
  const Example6({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                height: 200,
                width: 400,
                child: Image.network(
                  "https://assets.turbologo.com/blog/tr/2019/09/19134602/instagram-logo-illustration-958x575.png",
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(12),
            height: 50,
            width: 400,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 223, 220, 220),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text("Kullanıcı adı", style: TextStyle(color: Colors.grey)),
          ),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.all(12),
            alignment: Alignment.center,
            height: 50,
            width: 400,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 223, 220, 220),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text("Şifre", style: TextStyle(color: Colors.black38)),
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(12),
            alignment: Alignment.center,
            height: 50,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "Giriş Yap",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
            ),
          ),
          SizedBox(height: 4),
          Row(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  child: Text(
                    "Şifreni mi Unuttun?",
                    style: TextStyle(color: Colors.black, fontSize: 17),
                  ),
                ),
              ),
            ],
          ),
          Divider(height: 0),
          Container(
            color: const Color.fromARGB(255, 238, 232, 232),
            height: 30,
          ),
          Divider(height: 0),
          Row(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  child: Text(
                    "Hesabın yok mu? Kaydol",
                    style: TextStyle(color: Colors.black, fontSize: 19),
                  ),
                ),
              ),
            ],
          ),
          Divider(height: 0),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 40),
                  alignment: Alignment.topCenter,
                  color: const Color.fromARGB(255, 238, 232, 232),
                  height: 298,
                  width: 130,
                  child: Column(
                    children: [
                      Text(
                        "Uygulamayı indir.",
                        style: TextStyle(color: Colors.black, fontSize: 19),
                      ),
                      SizedBox(height: 18),
                      Row(
                        children: [
                          // App Store kutusu
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 80,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Icon(
                                      Icons.apple,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "App Store'dan",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                      Text(
                                        "indirin",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // Play Store kutusu
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 80,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Icon(
                                      Icons.android,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Play Store'dan",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                      Text(
                                        "indirin",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Example5 extends StatelessWidget {
  const Example5({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 135,
              width: 240,
              child: Image.network(
                "https://images2.alphacoders.com/901/901544.png",
              ),
            ),
          ],
        ),

        SizedBox(height: 20),
        Row(
          children: [
            Container(
              height: 135,
              width: 240,
              child: Image.network(
                "https://img1.wallspic.com/crops/8/8/8/0/7/170888/170888-anime-house-window-plant-building-3840x2160.jpg",
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class Example4 extends StatelessWidget {
  const Example4({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> myImages = [
      "lale.jpg",
      "lilyum.jpg",
      "lotus.png",
      "nergis.jpg",
    ];
    final imageFolder = "images/";
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 12),
                  height: 200,
                  child: Image.asset(imageFolder + myImages[0]),
                ),
              ),
            ],
          ),
          Divider(color: Colors.black),

          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 12),
                  height: 200,
                  child: Image.asset(imageFolder + myImages[1]),
                ),
              ),
            ],
          ),
          Divider(color: Colors.black),

          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 12),
                  height: 200,
                  child: Image.asset(imageFolder + myImages[2]),
                ),
              ),
            ],
          ),
          Divider(color: Colors.black),

          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 12),
                  height: 200,
                  child: Image.asset(imageFolder + myImages[3]),
                ),
              ),
            ],
          ),
          Divider(color: Colors.black),
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
      child: Image.asset("images/lotus.png", fit: BoxFit.cover),
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
              flex: 3,
              child: Container(
                alignment: Alignment.center,
                color: Colors.red,
                height: 180,
                child: Text("Ben %30"),
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(
                alignment: Alignment.center,
                color: Colors.teal,
                height: 180,
                child: Text("Ben %70"),
              ),
            ),
          ],
        ),
        Divider(color: Colors.red, thickness: 8),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                color: Colors.purple,
                height: 200,
                child: Text(" Ben % 20"),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.center,
                color: Colors.pink,
                height: 200,
                child: Text(" Ben % 30"),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                alignment: Alignment.center,
                color: Colors.green,
                height: 200,
                child: Text(" Ben % 50"),
              ),
            ),
          ],
        ),
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
                child: Text(
                  "Telefon Listesi",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Divider(indent: 36, endIndent: 36),
          ],
        ),
        //Başlık bölüm bitiş

        //içerik başlangıç
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 30),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  MyCard(
                    name: "Nergiz Alıci",
                    firstIcon: Icons.abc,
                    lastIcon: Icons.ac_unit_rounded,
                  ),
                ],
              ),
            ),
          ),
        ),
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
    required this.lastIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                height: 130,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  border: Border.all(color: Colors.blueGrey, width: 5),
                  borderRadius: BorderRadius.circular(
                    18,
                  ), // köşeleri yuvarlak yapıyor
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: EdgeInsets.all(9),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 186, 127, 162),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Icon(firstIcon, color: Colors.black87, size: 56),
                    ),
                    //yazı alanı
                    Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),

                    Icon(lastIcon, color: Colors.black, size: 36),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
