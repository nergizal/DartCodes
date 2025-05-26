import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  /*
  Dart dilinde List ikiye ayrılır:
  1)Sabit uzunluklu
  2)Büyüyen listeler

  1)Sabit Uzunluklu Listeler
  -Diğer dillerde dizi olarak bilinen yapılar dart dilinde sabit uzunluklu listeler olarak kullanılır
  -Tanımlama: List<veri_turu> liste_adı = List.filled(eleman_sayi,eleman);
  List<int> numaralar = List.fiiled(10,0)//dizide 10 tane 0 elemanı var
  
  -Listelerde elemanları tanımlamak ve çağırmak için index terimi kullanılır. index ifadesi 0 dan başlar. Yani listedeki birinci elemanı 0. index ile çağıracağız.
  -Eğer bir çıktıda [] görüyorsanız bu listedir.

  //Örnek 1: ekrana 5 tane Bilal yazan listeyi tanımlayın:

  List<String> names = List.filled(5, "Bilal");
  print(names);

  -Eğer bu liste türüne eleman eklemek isterseniz(elemanları değiştirmek)
  liste_adi[index] = deger


   //Örnek 1: ekrana 7 tane 5 yazdırın:

  List<int> sayilar = List.filled(7, 5);
  print(sayilar);
}

//Bu liste türü aslında kullanıcıdan belirtilen eleman sayısı kadar veri almak için kullanılır o girdiğimiz fiil parametresi bu dizi boş olamayacağız için varsayılan bir değer atamak için yazılır.
  List<int> sayilar = List.filled(7, 5);
  sayilar[0] = 9;
  sayilar[1] = 11;
  sayilar[2] = 78;
  print(sayilar);


    //String türünde ise başlangıçta fiil parametresini "" boş geçebilirsiniz
  List<String> meyveler = List.filled(3, "");
  meyveler[0] = "Elma";
  meyveler[1] = "Çilek";
  meyveler[2] = "Kiraz";
  print(meyveler);

  //Bu dizi türünün kötü özelliği eleman sayısını değiştiremezsiniz.
  //String türünde ise başlangıçta fiil parametresini "" boş geçebilirsiniz
  List<String> meyveler = List.filled(3, "");
  meyveler[0] = "Elma";
  meyveler[1] = "Çilek";
  meyveler[2] = "Kiraz";
  print(meyveler);
  print(meyveler.length); //dizinin eleman sayısını verir.
  meyveler.length = 8;//Hata verir çünkü eleman sayı değiştirilemez sabittir


  //dizinin eleman sayısını aşarsanız patlar uygulama
  List<int> numaralar = List.filled(4, 0);
  numaralar[0] = 7;
  numaralar[1] = 11;
  numaralar[2] = 5;
  numaralar[3] = 18;
  print(numaralar);
  numaralar[4] = 90; //eleman sayısını aştığı için hata alırız.

   //toString() metodu ile değerleri string e dönüştürüyorduk!
  List<String> isimler = List.filled(2, "");
  isimler[0] = 5.toString();
  isimler[1] = "Bilal";
  print(isimler);


  //Veri türü belli olmayan(herşey girilebilen) sabit uzunluk liste
  //dynamic: int, string, bool, double veri türlerinin hepsini içinde barındıran veri türüdür

  //Eğer List yanına veri türü yazmazsanız otomatik olarak dynamic olarak tanımlar
  List karisik = List.filled(4, 0);
  karisik[0] = "Ankara";
  karisik[1] = 14;
  karisik[2] = 2.75;
  karisik[3] = true;
  print(karisik);

  //Listenin türünü dynamic olarak belirtede bilirsiniz:
  List<dynamic> karisik = List.filled(2, "");
  karisik[0] = "Ahmet";
  karisik[1] = 18;
  print(karisik);

  //Listenin türünü dynamic olarak belirtede bilirsiniz:
  List<dynamic> karisik = List.filled(2, "");
  karisik[0] = "Ahmet";
  karisik[1] = 18;
  print(karisik);


   //List tanımlamasında veri türleri uyumlu olmalıdır.
  List<dynamic> karisik = List<int>.filled(3, 5);
  karisik[0] = "Bilal";
  karisik[1] = 9;
  karisik[2] = true;
  print(karisik); //Hata verir


  //3.tanımlama yöntemi
  //List<tür> list_adi= List<türü>.filled(eleman_sayisi, eleman);
  List<dynamic> karisik = List<dynamic>.filled(3, 5);
  karisik[0] = "Bilal";
  karisik[1] = 9;
  karisik[2] = true;
  print(karisik); //Hata vermez

  //Ekrana yazdırma: döngü kullanarak ekrana yazdırılır.

  //5 elemanlı isimler listesiniz ekrana yazdırın
  List<String> isimler = List.filled(5, "");
  isimler[0] = "Bilal";
  isimler[1] = "Tülay";
  isimler[2] = "Gülay";
  isimler[3] = "Ümit";
  isimler[4] = "Hatice";
  //dizileri yazdırırken for kullanıyorsanız mutlaka i yi 0 dan başlatmalısınız çünkü index sıfırdan başlar
  for (int i = 0; i < isimler.length; i++) {
    print(isimler[i]);
  }

    //5 elemanlı int bir sabit liste oluşturalım. bu elemanları 5 arttırarak ekrana yazdıralım

  List<int> sayilar = List.filled(3, 0);
  sayilar[0] = 9;
  sayilar[1] = 22;
  sayilar[2] = 13;

  print("İlk halin: $sayilar");

  for (int i = 0; i < sayilar.length; i++) {
    sayilar[i] += 5; //her bir elemanı 5 arttırıyoruz
    print(sayilar[i]);
    //stdout.write("${sayilar[i]} "); yan yana yazdırmak için
  }

  //başında sayının numarası yazdın yukarıdaki örneğin devamı

  List<int> sayilar = List.filled(4, 0);
  sayilar[0] = 5;
  sayilar[1] = 22;
  sayilar[2] = 36;
  sayilar[3] = 48;

  for (int i = 0; i < sayilar.length; i++) {
    print("${i + 1}. eleman: ${sayilar[i]}");
  }

   //diğer for kulllanımı. Listeler için özelleştirilmiş bir for türümüz vardır. Kullanımı:

  for(veri_türü degisken_adi in liste_adi){
    Yapılacak işlemler
    }

    //sehirler adında string bir sabit liste oluşturup özelleştirilmiş for ile ekrana yazdıralım

  List<String> sehirler = List.filled(5, "İstanbul");
  sehirler[0] = "Ardahan";
  sehirler[1] = "Ordu";
  sehirler[2] = "Amasya";
  sehirler[3] = "Kırklareli";

  for (String sehir in sehirler) {
    print(sehir);
  }

  ------------------------------------------------

  //Sabit uzunluklu listeler tekrar
  -eğer kullanacağınız listenin eleman sayısı sabit ise bu kullanılır. Performans ve ram kullanımı açısından iyidir.
  -Bu diğer progralama dillerindeki dizidir. 
  -Tanımlama yöntemleri List sınıfının filled metodu ile tanımlanır:

  List<veri_turu> liste_adi = List.filled(eleman_sayisi, eleman);
  List<veri_turu> liste_adi = List<veri_turu>.filled(eleman_sayisi, eleman)

  //Eğer veri türü belli değilse yani her türden veri alabilirse şu şekilde tanımlanır:

  List liste_adi = List.filled(eleman_sayisi,eleman);
  //dynamic: dinamik yani her tür veri alabilir demektir. Yukarıdaki böyle bir liste türü olur.

  List<dynamic> liste_adi = List.filled(eleman_sayisi,eleman);
  List<dynamic> liste_adi = List<dynamic>.filled(eleman_sayisi,eleman);

  //elemanları nasıl veririz:
  List<int> sayilar = List.filled(5,0);

  bu tanımlama 5 elemanlı ve elemanları 0 olan bir listedir. ekran çıktısı [0,0,0,0,0] şeklindedir. Bu elemanları değiştirmek istiyorsa:

  sayilar[0] = 7;
  sayilar[1] = 17;
  sayilar[2] = 27;
  sayilar[3] = 37;
  sayilar[4] = 56; şeklinde değiştirebiliriz.

  Bu dizinin güzel yani eğer o veriyi girmediysen yukarıda tanımladığın varsayılan değeri atar eğer yukarıdaki sayilar[4] elemanına 56 yazmasaydık varsayılan olarak 0 gelecekti


  Bu liste türünün dezavantajı dizinin elemansayısı değiştirilemez
  sayilar.length = 9; yaptım diyemezsin hata alırsın

  Diğer dezavantajı sınırı aşamazsın yani 5 elemanlı ise altıncı elemanı girmeye çalışırsan patlar.
  sayilar[5] = 19; dersek hata alırız.

  Bu dizileri ekrana yazdırmak istiyorsan ya normal for ya da özelleştirilmiş for kullanırız.

  yukarıdaki liste örneği için for:

  for(int i = 0; i < sayilar.lenght; i++){
      print(sayilar[i]);
  }

  ya da özelleştirilmil for ile 

   for(int sayi in sayilar){
      print(sayi);
  }

  //!! listeler çağırırken index numarasına göre çağırırız. buna göre index 0 dan başlar yani sayilar[0] => 1.eleman demektir. 

  //2)Büyüyebilen listeler(Dinamik liste):

  -Sabit bir eleman sayısı olmayan listeler.

  -Tanımlama:
  List<veri_turu> liste_adi = [];
  List<veri_turu> sayilar = <veri_turu>[];
  bu iki şekilde de tanımlanabilir

  -Eleman ekleme:
  --Yanlış yol: 
  List<int> sayilar = [];
  sayilar[0] = 17;//hata alırız. 

  --Doğru yol: add metodu ile eklenmelidir.

  List<int> sayilar = [];
  sayilar.add(5);
  sayilar.add(17);
  sayilar.add(43);
  print(sayilar);

  //sınırsız bir uzunluk değiştirme yapısı var:

   List<int> sayilar = [];
  sayilar.add(5);
  sayilar.add(17);
  sayilar.add(43);
  print(sayilar);
  print(sayilar.length);
  sayilar.add(19);
  print("Değişmiş eleman sayısı ${sayilar.length}");

  //Liste uzunluğu tanımlama hatası:
  List<int> numaralar = [];
  numaralar.length = 10;
  numaralar.add(7);
  numaralar.add(11); //geriye kalan 8 veri null geldi diye hata verir.

  //Eğer liste uzunluğunu önceden tanımlıyorsanız ki bu sınırsız liste için saçma bir durum (sabit liste kullanmalısın) ama illa ben tanımlıcam diyorsan

  List<int?> numaralar = [];
  numaralar.add(7);
  numaralar.add(11);
  numaralar.length = 10;
  print(numaralar); //Hata vermez çünkü null izni verdik

//eğer elemanlarınız belliyse bir başka tanımlama yolu da elemanları [] içine yazmaktır. ve bunun üzerine eleman ekleyebilirsiniz. Ekleyeceğiniz eleman sona eklenecektir.

  List<int> sayilar = [1, 2, 3];
  print("Liste 1: $sayilar");
  print("*************");
  sayilar.add(45);
  print("Liste 2: $sayilar");


  //eğer elemanlarınız belliyse bir başka tanımlama yolu da elemanları [] içine yazmaktır. ve bunun üzerine eleman ekleyebilirsiniz. Ekleyeceğiniz eleman sona eklenecektir.

  List<int> sayilar = [1, 2, 3];
  print("Liste 1: $sayilar");
  print("*************");
  sayilar.add(45);
  print("Liste 2: $sayilar");
  

//Sabit uzunluklu listeleri büyüyebilen listelere dönüştürebiyoruz. Eğer ilk verilerini hep aynı olsun sonradan eklenebilir olsun istiyorsanız bunu kullanırsınız


//filled metdounda length ve fill zorunlu parametredir. ama growable zorunlu değildir. growable demek büyüyebilir mi anlamına gelir. eğer false ise sabit uzunluklu liste demektir varsayılan değeri odur. ama bu değeri true yaparsanız artık büyüyebilen bir listeye dönüşür. bu bir isimlendirilmiş parametredir. Bunu nerden anlıyoruz {} içine yazılmıştır. isimlendirilmiş parametreleri çağırırken ismini vererek kullanırız: growable : true gibi.
  bool isGrowable = true;
  List<int> myNumber = List.filled(5,0,growable: true); //büyüyebilen bir liste oldu
  print(myNumber.length);
  print(myNumber);
  print("*****************");
  myNumber.add(58);
  print(myNumber);
  print(myNumber.length);

//Dinamik yani büyüyebilen listelerin bir başka tanımlama yolu:
  List<String> cities = List.empty(growable: true); //List<String> cities = []
  cities.add("Nevşehir");
  cities.add("Hakkari");
  print(cities);
  print(cities.length);


//Dinamik yani büyüyebilen listelerin bir başka tanımlama yolu:
  List<String> cities = List.empty(growable: true); //List<String> cities = []
  cities.add("Nevşehir");
  cities.add("Hakkari");
  print(cities);
  print(cities.length);


   //Listenin belirli index e göre elemanını değiştirme
  List<int> sayilar = [];

  sayilar.add(45);
  sayilar.add(58);
  sayilar.add(54);
  print(sayilar);
  print("-------------");
  sayilar[1] = 68;
  print(sayilar);


  //Listenin belirli index e göre elemanını değiştirme
  List<int> sayilar = [];

  sayilar.add(45);
  sayilar.add(58);
  sayilar.add(54);
  print(sayilar);
  print("-------------");
  sayilar[1] = 68;
  print(sayilar);

    //ekrana yazdırma
  List<int> numaralar = [5, 9, 18, 56, 49];
  for (int i = 0; i < numaralar.length; i++) {
    print(numaralar[i]);
  }

  print("********************");

  for (int sayi in numaralar) {
    print(sayi);
  }

   //Listelerin yardımcı metodları:

   List<String> programlamaDilleri = [
    "Java",
    "Dart",
    "C#",
    "Python",
    "Javascript",
    "Swift",
    "Kotlin",
    "Php",
  ];
  print(programlamaDilleri.first);//java

 //2)last: listenin son elemanını verir.

  List<String> programlamaDilleri = [
    "Java",
    "Dart",
    "C#",
    "Python",
    "Javascript",
    "Swift",
    "Kotlin",
    "Php",
  ];
  print(programlamaDilleri.last); //Php


  //3)isEmpty: listenin boş mu bunu sorgular boş ise true dolu ise false döndürür.

  List<String> programlamaDilleri = [
    "Java",
    "Dart",
    "C#",
    "Python",
    "Javascript",
    "Swift",
    "Kotlin",
    "Php",
  ];

  List<int> asalRakamlar = [];
  print(programlamaDilleri.isEmpty); //false;
  print(asalRakamlar.isEmpty); //true;



//4)isNotEmpty: Eğer boş değilse true döner boş ise false döner

  List<String> programlamaDilleri = [
    "Java",
    "Dart",
    "C#",
    "Python",
    "Javascript",
    "Swift",
    "Kotlin",
    "Php",
  ];

  List<int> asalRakamlar = [];
  print(programlamaDilleri.isNotEmpty); //true
  print(asalRakamlar.isNotEmpty); //false


  //5)length: Listenin eleman sayısını verir

  List<String> programlamaDilleri = [
    "Java",
    "Dart",
    "C#",
    "Python",
    "Javascript",
    "Swift",
    "Kotlin",
    "Php",
  ];

  List<int> asalRakamlar = [];
  print(programlamaDilleri.length); //8
  print(asalRakamlar.length); //0


 //6)reversed: Listeyi anlık olarak ters çevirir.

  List<String> programlamaDilleri = [
    "Java",
    "Dart",
    "C#",
    "Python",
    "Javascript",
    "Swift",
    "Kotlin",
    "Php",
  ];

  List<int> asalRakamlar = [];
  print("Ters döndü");
  print("listenin ters sırası: ${programlamaDilleri.reversed}"); //ters
  print("Hala ayn mı?");
  print("listenin ters sırası: $programlamaDilleri"); //düz

  //6)remove: Sileceğiniz elemanı içine yazarak silersiniz.Eğer o veriden birden fazla varsa sıralamadaki ilk olanı siler

  List<String> programlamaDilleri = [
    "Java",
    "Dart",
    "C#",
    "Python",
    "Javascript",
    "Swift",
    "Kotlin",
    "Php",
  ];

print("Silinmemiş liste: $programlamaDilleri");

  programlamaDilleri.remove("Javascript");

  print("*************");
  print("Silinmiş liste: $programlamaDilleri");


  List<int> asalRakamlar = [2, 5, 3, 2, 7, 7];

  print("Silinmemiş liste: $asalRakamlar");

  asalRakamlar.remove(2);//ilk sıradakini siler

  print("*************");
  print("Silinmiş liste: $asalRakamlar"); 


  //6)removeAt: Girdiğiniz index numarasına göre elemanı siler

  List<String> programlamaDilleri = [
    "Java",
    "Dart",
    "C#",
    "Python",
    "Javascript",
    "Swift",
    "Kotlin",
    "Php",
  ];

  List<int> asalRakamlar = [2, 5, 3, 2, 7, 7];

  print(programlamaDilleri);
  print("*******************");
  programlamaDilleri.removeAt(3); //index numarasına göre silecek
  print(programlamaDilleri);

   //6)removeAt: Girdiğiniz index numarasına göre elemanı siler

  

  List<String> programlamaDilleri = [
    "Java",
    "Dart",
    "C#",
    "Python",
    "Javascript",
    "Swift",
    "Kotlin",
    "Php",
  ];

  print(programlamaDilleri);
  print("*******************");
  programlamaDilleri.removeAt(3); //index numarasına göre silecek
  print(programlamaDilleri);

   List<int> asalRakamlar = [2, 5, 3, 2, 7, 7];

  print(asalRakamlar);
  print("*******************");
  asalRakamlar.removeAt(2); //index numarasına göre silecek 3 silinecek
  print(asalRakamlar);

   //Bu işlediğimiz metodlar sabit uzunluklu listelerde geçerli değildir.

  List<int> sayilar = List.filled(3, 5);
  print(sayilar);
  sayilar.remove(5);
  print(sayilar); //hata


  //7)Clear : listeyi tamamen temizler

  List<int> numberBest = [5, 9, 17, 25, 38, 59];
  print(numberBest);
  numberBest.clear();
  print(numberBest);

  //7)Contains : Bir listede girdiğiniz parametreyi arar. Eğer varsa true yoksa false döndürür.

  List<int> numberBest = [5, 9, 17, 25, 38, 59];
  print(numberBest.contains(9)); //true
  print(numberBest.contains(56)); //false


  List<String> product = ["Kazak", "Gömlek", "Pantolon"];

  if (product.contains("Tshirt")) {
    print("Evet elimiz ürün var");
  } else {
    print("Malesef istediğiniz ürün tükenmiş");
  }

   //7)elementAt: Parametre olarak girdiğiniz index değerindeki veriyi verir.

  List<String> yemekler = [
    "Karnıyarık",
    "Sarma",
    "Su Böreği",
    "Sigara Böreği",
    "Tavuklu Mantar Sote",
  ];

  print(yemekler.elementAt(1)); //Sarma



  //7)indexOf : Girdiğiniz elemanın index i ni size verir.(ilk karşılaştığının indexini döndürür)

  List<int> sayilar = [
    5,
    9,
    17,
    36,
    58,
    99,
    58,
  ]; //58 den iki tane var ama ilkini alır
  print(sayilar.indexOf(58)); //index 4


  //7)indexOf : Girdiğiniz elemanın index i ni size verir.(ilk karşılaştığının indexini döndürür)

  List<int> sayilar = [
    5,
    9,
    17,
    36,
    58,
    99,
    58,
  ]; //58 den iki tane var ama ilkini alır
  if (sayilar.indexOf(105) == -1) {
    //Bu eleman yok
    print("Girdiğiniz eleman hatalı");
    print(sayilar.indexOf(105));
  } else {
    print(sayilar.indexOf(105));
  }

  //7)shuffle: Listenin elemanlarını random olarak karıştırır.

  List<String> renkler = ["Sarı", "Mavi", "Pembe", "Yeşil"];
  print(renkler);
  print("*************");
  renkler.shuffle();
  print(renkler);//direk etkiler.

  //7)shuffle: Listenin elemanlarını random olarak karıştırır.

  List<String> renkler = ["Sarı", "Mavi", "Pembe", "Yeşil"];
  print(renkler);
  print("*************");
  renkler.shuffle();
  print(renkler);//direk etkiler.




}

  //Set Yapısı ve Kullanımı:
  -Bir diğer koleksiyon yapısıdır. set küme anlamına gelir. 
  -Listden en önemli farkı elemanları sıralı olarak tutmaz(index sıralaması yapmaz), bu durumda listlerde olduğu gibi index kullanamayız
  -index olmadan elemanları kontrol etmek için contains methodu kullanılabilir. onun dışında listelerdeki metodlar set için de geçerlidir.
  -Tekrar eden verileri yazmaz. 

  Tanımlama: Set<Veri_türü> adı = Set();
  Ekleme : add methodu ile yapılır.
  Yazdırma: özelleştirilmiş for kullanabiliriz

  //Eğer kullanıcıdan farklı veriler almak istiyorsan Set kullanmak zorundasın!!
  Set<String> isimler = Set();
  isimler.add("Bilal");
  isimler.add("Hatice");
  isimler.add("Mikail");
  isimler.add("Faruk");
  isimler.add("Yıldırım");
  isimler.add("Bilal");
  isimler.add("Hatice");

  for (String isim in isimler) {
    print(isim);
  }
}//Faklı veri almak tanımlama : Set<String> isimler = Set(); Ekleme :  isimler.add("Bilal"); özelleştirilmiş for. çağırmak için contains çünkü index yok

Set in ikinci tanımlaması:Verileri ilk başta verme
Set<int> sayilar = {9, 8, 15, 46};

 Set<int> sayilar = {9, 8, 15, 46, 46, 15};

 for (int sayi in sayilar) {
    print(sayi);
  }
Set in üçüncü tanımlaması:
var isimler = Set<String>();
for (String isim in isimler) {
    print(isim);
  }

   //Set contains kullanımı: 

  Set<String> isimler = {"Zuhal", "Ayşe", "Seyfi"};
  if (isimler.contains("Zuhal")) {
    print("Girdiğiniz isim var");
  } else {
    print("Hatalı isim");
  }

  //Set contains kullanımı: 

  Set<String> isimler = {"Zuhal", "Ayşe", "Seyfi"};
  if (isimler.contains("Zuhal")) {
    print("Girdiğiniz isim var");
  } else {
    print("Hatalı isim");
  }

  //Set remove kullanımı:

  Set<String> sehirler = Set();
  sehirler.add("Kastamonu");
  sehirler.add("Sakarya");
  sehirler.add("Elazığ");
  sehirler.add("Sivas");

  if (sehirler.remove("Sivas")) {
    print("Girdiğiniz veri başarıyla silindi");
  } else {
    print("Hatalı işlem");
  }

  //Farklı bir set tanımlama yöntemi:

  Set<int> numaralar = Set.from([1, 5, 7, 9, 7, 1, 8, 1, 1, 9, 5]);

  for (int numara in numaralar) {
    print(numara); //1-5-7-9-8
  }

   //addAll: bir set ya da list e yine bir set ya da list eklemeye yarar

  Set<int> myNumber = Set();
  List<int> sayilar = [0, 1, 2, 3, 4, 5, 4, 3, 2, 1, 0];
  myNumber.addAll(sayilar);

  for (int no in myNumber) {
    print(no);
  }

  

  //Örnekler:

  //1)Bir listedeki ürünleri ekrana yazdıralım

  List<String> products = ["Buzdolabı", "Çamaşır Makinesi", "Fırın", "Ütü"];

  for (String p in products) {
    print(p);
  }

  //2)Bir kullanıcıdan 5 tane sayı alıp listeye ekleyelim
  List<int> sayilar = [];
  for (int i = 1; i <= 5; i++) {
    stdout.write("$i. sayıyı giriniz: ");
    int sayi = int.parse(stdin.readLineSync()!);
    sayilar.add(sayi);
  }
  print("********Girdiğiniz sayılar *********");
  for (int s in sayilar) {
    print(s);
  }

   //3)kullanıcıdan 5 tane meyve alıp listeye ekleyelim

  List<String> meyveler = [];

  for (int i = 1; i <= 5; i++) {
    stdout.write("$i. meyveyi giriniz: ");
    String? meyve = stdin.readLineSync();
    meyveler.add(meyve!);
  }
  print("******** Girdiğiniz Meyveler*********");
  for (String m in meyveler) {
    print(m);
  }

   //4) sabit bir liste 5 sayı ekleyip ekrana yazdırın

  List<int> numbers = List.filled(5, 0);

  for (int i = 0; i <= 4; i++) {
    stdout.write("${i + 1}. sayıyı giriniz: ");
    int sayi = int.parse(stdin.readLineSync()!);
    numbers[i] = sayi;
  }
  print("******** Girilen Sayılar ********");
  for (int n in numbers) {
    print(n);
  }

    //4) sabit bir liste 5 sayı ekleyip ekrana yazdırın

  List<int> numbers = List.filled(5, 0);

  for (int i = 0; i <= 4; i++) {
    stdout.write("${i + 1}. sayıyı giriniz: ");
    int sayi = int.parse(stdin.readLineSync()!);
    numbers[i] = sayi;
  }
  print("******** Girilen Sayılar ********");
  for (int n in numbers) {
    print(n);
  }



  //5)10 tane 1 ile 100 arasında random sayı oluşturup listeye ekleyelim

  List<int> myNumber = [];
  Random r = Random();
  for (int i = 0; i <= 9; i++) {
    int randomSayi = r.nextInt(100) + 1;
    myNumber.add(randomSayi);
  }
  print("****************Gelen sayılar**************");
  int sayac = 0;
  for (int s in myNumber) {
    sayac++;
    print("$sayac. sayı : $s");
  }

   //6)Kullanıcının girdiği 10 tane sayının çift ya da tek olduğunu ekrana yazdıralım

  List<int> ciftSayilar = [];
  List<int> tekSayilar = [];
  for (int i = 0; i <= 9; i++) {
    stdout.write("Lütfen ${i + 1}. sayıyı giriniz: ");
    int sayi = int.parse(stdin.readLineSync()!);
    if (sayi % 2 == 0) {
      ciftSayilar.add(sayi);
    } else {
      tekSayilar.add(sayi);
    }
  }
  print("************ Girilen çift sayılar **********");
  int sayac = 0;
  print("Girdiğiniz 10 sayıdan ${ciftSayilar.length} tanesi çifttir");
  for (int cift in ciftSayilar) {
    sayac++;
    print("$sayac. sayı : $cift");
  }
  print("************ Girilen tek sayılar **********");
  int sayac2 = 0;
  print("Girdiğiniz 10 sayıdan ${tekSayilar.length} tanesi çifttir");
  for (int tek in tekSayilar) {
    sayac2++;
    print("$sayac2. sayı : $tek");
  }
//Kullanıcının girdiği 8 sayıdan pozitif negatif ve nötr olanları yazdırın
  List<int> pozSay = [];
  List<int> negSay = [];
  List<int> notrSay = [];
  for (int i = 0; i <= 7; i++) {
    stdout.write("Lütfen ${i + 1}. sayıyı giriniz: ");
    int sayi = int.parse(stdin.readLineSync()!);
    if (sayi > 0) {
      pozSay.add(sayi);
    } else if (sayi < 0) {
      negSay.add(sayi);
    } else {
      notrSay.add(sayi);
    }
  }
  print("*********Girdiğiniz pozitif sayılar********");
  int pozSayac = 0;
  print("Girdiğiniz 8 sayıdan ${pozSay.length} tanesi pozitif sayıdır");
  for (int s in pozSay) {
    pozSayac++;
    print("$pozSayac. sayı : $s");
  }
  print("*********Girdiğiniz negatif sayılar********");
  int negSayac = 0;
  print("Girdiğiniz 8 sayıdan ${negSay.length} tanesi negatif sayıdır");
  for (int s in negSay) {
    negSayac++;
    print("$negSayac. sayı: $s");
  }
  print("*********Girdiğiniz nötr sayılar********");
  int notrSayac = 0;
  print("Girdiğiniz 8 sayıdan ${notrSay.length} tanesi nötr sayıdır");
  for (int s in notrSay) {
    notrSayac++;
    print("$notrSayac. sayı: $s");
  }
 
 //Kullanıcının 5 tane girdiği sayının 3 e bölünenleri 3 e bölünenler 4 e bölünenleri de 4 bölünenler her ikisine de bölünüyorsa buna ekleyecek ekrana yazdıralım.
  List<int> uceBolunen = [];
  List<int> dordeBolunen = [];
  List<int> herIkisineBolunen = [];
  for (int i = 0; i <= 4; i++) { 
    stdout.write("${i + 1}.sayıyı giriniz: ");
    int sayi = int.parse(stdin.readLineSync()!);
    if (sayi % 3 == 0 && sayi % 4 != 0) { uceBolunen.add(sayi);} 
    else if (sayi % 4 == 0 && sayi % 3 != 0) {dordeBolunen.add(sayi);} 
    else if (sayi % 3 == 0 && sayi % 4 == 0) {herIkisineBolunen.add(sayi);}
  }
  print("*********Sadece 3'e bölünenler******");
  for (int sayi in uceBolunen) {
    print(sayi);
  }
  print("*********Sadece 4'e bölünenler******");
  for (int sayi in dordeBolunen) {
    print(sayi);
  }
  print("*********Hem 3 hem de 4'e bölünenler******");
  for (int sayi in herIkisineBolunen) {
    print(sayi);
  }

  


*/

  
}
