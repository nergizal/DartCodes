import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  /*
  geri değer döndürmeyen fonksiyon: Eğer bir işlemi direk ekrana bastıracaksak ve bu metodun sonucu başka bir metodu ilgilendirmiyor ve sonucu bir başka fonksiyona gitmeyecekse void kullanılır

  geri değer döndüren fonksiyon: Eğer bir fonksiyon direk ekrana bir şey bastırmayacaksa içinde barındırdığı veri başka bir fonksiyonda ya da yapıda kullanılacaksa geri değer döndüren fonksiyon kullanılır.


  //1)kullanıcıdan iki sayı alıp içlerinden büyük olanı 
  //2)kullanıcıdan aldığı iki sayının üslü ifade sonucunu veriyor
  //3)kullanıcıdan iki sayı alıyor ve bu sayıların büyük olanını veya üslü sonucunu ekrana yazdırıyor.

  sayilariIsteVeSonuclariYazdir();

  //Seçimi alıyor seçime göre sayıları alıyor
void sayilariIsteVeSonuclariYazdir() {
  var usluSonuc = 0;
  double buyukSayi = 0;
  stdout.write(
    "Üslü sayı sonucu almak için 1'e büyük sayıyı bulmak için 2'ye basınız: ",
  );
  String? secim = stdin.readLineSync();
  if (secim == "1") {
    stdout.write("Lütfen taban olacak sayıyı giriniz: ");
    int taban = int.parse(stdin.readLineSync()!);
    stdout.write("Lütfen kuvvet olacak sayıyı giriniz: ");
    int kuvvet = int.parse(stdin.readLineSync()!);
    usluSonuc = usluSonucuBul(taban, kuvvet);
    print(
      "Girdiğiniz taban: $taban ve kuvvet: $kuvvet sonucu $usluSonuc ' dur",
    );
  } else if (secim == "2") {
    stdout.write("Lütfen 1.sayıyı giriniz: ");
    double sayi1 = double.parse(stdin.readLineSync()!);
    stdout.write("Lütfen 2.sayıyı giriniz: ");
    double sayi2 = double.parse(stdin.readLineSync()!);
    buyukSayi = buyukOlaniBul(sayi1, sayi2);
    print("Girdğiniz $sayi1 ve $sayi2 den büyük olan $buyukSayi 'dir");
  }
}
dynamic usluSonucuBul(int t, int k) {
  var sonucUslu = pow(t, k);
  return sonucUslu;
}

double buyukOlaniBul(double s1, double s2) {
  double sonucBuyuk = max(s1, s2);
  return sonucBuyuk;
}
---------------------------- Yeni Konu --------------------------------
  Map: 
  -Flutter kısmında o kadar çok kullanıcaz ki. Firebase den veri çekerken api den veri çekerken. 
  -Map yapısı da set yapısı gibi sırasız  bir şekilde elemanları saklayan bir koleksiyon öğesidir.
  -Bu yapıyı listelerden ve setten ayıran özellik elemanların key-value olarak saklanmasıdır.
  -Herhangi bir veri türü kullanılabilir ama önemli olan key değerleri unique yani benzersiz eşsiz olması gerekmektedir.
  -Map yapısını sözlüğe benzetebiliriz. Tıpkı sözlük gibi birbirinden farklı elemanları içerir
  -Sabit uzunluklu değildir, dinamik uzunluğa sahiptir.

  Tanımlama:
  -key değerleri büyük ihtimalle hep string tanımlanır.
 - Map<key_veri_turu, value_veri_turu> map_adi = {};//boş map tanımlanır

 Örnek:  Map<String, int> alanKodlari = {};
 -Tanımalam sırasında değerler de verilebilir:

 Map<String, int> alanKodlari = {
    "ankara" : 312,
    "istanbul": 212,
    "bursa": 224
  };

  -Çağırma:
  --deneme amaçlı print ile yazdırabiliriz.Genel çağırma:
  print(alanKodlari);
  --print(alanKodlari["istanbul"]);//212

  -Map ler dediğimiz gibi her türlü veri tipini alabilir. key değerleri string tanımlanır ama değer tipleri istediğiniz her şey olabilir.

  Map<String, dynamic> bilal = {
    "isim": "Bilal",
    "soyIsim": "Karademir",
    "yas": 38,
    "bekarMi": true,
    "maas": 225.75,
  };

  print(bilal["maas"]);

  -map değerini çağırırken tek tırnak da kullanabilirsiniz:


   Map<String, dynamic> bilal = {
    "isim": "Bilal",
    "soyIsim": "Karademir",
    "yas": 38,
    "bekarMi": true,
    "maas": 225.75,
  };

  print(bilal['bekarMi']);
}

-Genelde bu yapıları veri tabanı işlemlerinde kullanacağımız için genelde map türü key: string value dynamic olarak kullanacaksınız.


 //3.tanımlama:
  Map<String, dynamic> deneme = Map();

  -Bir başka değer atama yöntemi de şudur:

  //Diğer bir değer atama yöntemi
  Map<String, dynamic> deneme = {};
  deneme["age"] = 55;
  deneme["name"] = "Bilal";
  deneme["price"] = 584.75;
  deneme["isMarried"] = false;
  print(deneme["name"]);

  //bir map içindeki keyleri yazdırmak istersek:

   Map<String, dynamic> companyInfo = {
    "name": "Karademir Games",
    "year": 2022,
    "price": 987.625,
    "isActivite": true,
  };

  for (String onAnkiAnahtar in companyInfo.keys) {
    print(onAnkiAnahtar);
  }

  //biz bir map içindeki değerleri ekrana bastırmak istersek: 

   Map<String, dynamic> companyInfo = {
    "name": "Karademir Games",
    "year": 2022,
    "price": 987.625,
    "isActivite": true,
  };

  for (String oAnkiAnahtar in companyInfo.keys) {
    print(companyInfo[oAnkiAnahtar]);
  }
  //Bir tane araba map i oluşturun. name, model, year, otomatikVitesMi, price, yakıttürü bir map oluşturun sonra for döngüsü ile değerleri yazdırın.

  Map<String, dynamic> myCar = {
    "name": "Tesla",
    "model": "ModelY SR",
    "fuelType": "Elektric",
    "pirce": 1866.525,
    "isOtomatic": true,
  };

  for (String key in myCar.keys) {
    print(myCar[key]);
  }

  //Değerleri yazdırma türü 2

   Map<String, dynamic> myCar = {
    "name": "Tesla",
    "model": "ModelY SR",
    "fuelType": "Elektric",
    "pirce": 1866.525,
    "isOtomatic": true,
  };

  for (dynamic value in myCar.values) {
    print(value);
  }

  //Sadece değerleri yazdırmak isterse:

   Map<String, dynamic> myCar = {
    "name": "Tesla",
    "model": "ModelY SR",
    "fuelType": "Elektric",
    "pirce": 1866.525,
    "isOtomatic": true,
  };

  for (dynamic value in myCar.values) {
    print(value);
  }

    //key ve value yi beraber yazdırmak istersek

  Map<String, dynamic> fenerbahce = {
    "alani": "Futbol",
    "kurulusYil": 1907,
    "kadroDegeri": 2589.896,
    "sahasi": "Şükrü Saraçpğlu Stadyumu",
    "aktifMi": true,
  };

  for (var element in fenerbahce.entries) {
    print("Key: ${element.key} - değeri : ${element.value}");
  }

    //key ve value yi beraber yazdırmak istersek

  Map<String, dynamic> fenerbahce = {
    "alani": "Futbol",
    "kurulusYil": 1907,
    "kadroDegeri": 2589.896,
    "sahasi": "Şükrü Saraçpğlu Stadyumu",
    "aktifMi": true,
  };

  //bir keyin map içinde olup olmadığını nasıl anlarız:

  if (fenerbahce.containsKey("sahasi")) {
    print("Bulunan saha değeri : ${fenerbahce["sahasi"]}"); //bu çalışacak
  } else {
    print("Böyle bir key yok");
  }

  if (fenerbahce.containsKey("model")) {
    print("Bulunan saha değeri : ${fenerbahce["sahasi"]}");
  } else {
    print("Böyle bir key yok"); //bu çalışacak
  }

  //Koleksiyonlar ile ilgili önemli bilgiler
  Burada anlatmadığım ya da fluttter bize lazım olan şeyleri göstericem.

  -Bizim koleksiyonlarımız List, set , map

  -Bizler bunları oluştururken veri türünü belirtmek zorunda değilsiniz. Ama belirtmek önemli ama aşağıdaki gibi tanımlanabilir

  var listem = [];

  -başında var kullanıp tanımlama kısmında değeri tanımlanabilir
   var listem = <int>[];

  -set içinde var türü kullanılabilir. kısa kullanımda tanımlamada ilk etapta map olarak algılar değer girdiğiniz an değer şeklinde göre set mi map mi olduğunu anlar
 --var mySet = {}; // ilk etapta map olarak algılar
 --var mySet = {'Bilal','Ahmet'}; değerini verirseniz otomatik olarak --set olduğunu algılar.
 --var mySet = <String>{}; //kısa set tanımlaması

  -addAll()
  var tekSayilar = [1, 3, 5, 7];
  var ciftSayilar = [2, 4, 6];

  //listeleri birleştirmek istiyorum:
  var sonListe = [];
  sonListe.addAll(tekSayilar);
  sonListe.addAll(ciftSayilar);
  print(sonListe);

    //spreads operatörü
  var tekSayilar = [1, 3, 5, 7];
  var ciftSayilar = [2, 4, 6];
  var sonListe = [...tekSayilar, ...ciftSayilar];
  //bu ne işe yarıyor ... önce tek sayıları ekle sonra ... cift sayıları ekle
  print(sonListe);

  //bunu map ve ya set içinde kullanabilirsiniz.
  var map1 = {"ad": "bilal"};
  var map2 = {"yas": 38};
  //birleştirmek istersek
  var sonMap = {...map1, ...map2};
  print(sonMap);

  //bunu map ve ya set içinde kullanabilirsiniz.
  var set1 = {'hasan'};
  var set2 = {'bilal'};
  var set3 = {'kemal'};
  var set4 = {'hasan'};
  var sonSet = {...set1, ...set2, ...set3, ...set4};
  print(sonSet);

    //bana iki tane liste oluşturun yemek, meyveler sonra bunları spreads operatörü ile birleştirin

  var yemekList = ["karnıyarık", "sarma", "ızgara kanat"];
  var meyveListe = ["muz", "karpuz", "şeftali", "mandalina", "portakal"];
  var karisikList = [...yemekList, ...meyveListe];
  print(karisikList);

  Koleksiyon Örnekleri:

   Örnek 1)şehirleri tutan bir liste oluşturun 4 tane kullanıcı il eklesin sonra bu listeyi ekrana yazdırın.

  List<String> cities = List.filled(4, "");
  for (int i = 0; i <= 3; i++) {
    stdout.write("${i + 1}. şehri giriniz: ");
    String? city = stdin.readLineSync();
    cities[i] = city!;
  }

  print("******* Girdiğiniz Şehirler ************");
  int sayac = 0;
  for (String c in cities) {
    sayac++;
    print("$sayac. sehir : $c");
  }


    Örnek 2)Keyleri string değerleri dynamicolan bir map oluşturun. Bu map bilgisayar özellikleri ile ilgili olsun. İçerisinde işlemci çekirdek sayısı(8 ya da 4 gibi), işlemci hızı (2.4, 2.8)i ram miktarı (8 ya da 16), ssd (128, 256), işlemci türü(intel ya da amd).. sonra bu bilgileri 
    a)güzel bir şekilde ekrana yazdırın.

    b)Standart yazdırın (for ile)(key ve value bir arada)



  Map<String, dynamic> myComputer = {
    "cekirdek": 8,
    "hiz": 2.8,
    "ram": 32,
    "ssd": 1,
    "tur": "intel",
  };

  //a)
  print(
    "Bilgisayarımın çekirdek sayısı ${myComputer['cekirdek']}, hızı ${myComputer['hiz']} ghz, ram miktarı ${myComputer['ram']} gb, harddisk kapasitesi ${myComputer['ssd']} tb, işlemci türü ${myComputer['tur']} ",
  );

  //b)
  for (var eleman in myComputer.entries) {
    print("${eleman.key} : ${eleman.value}");
  }

  //5 elemanlı farklı iki tane liste oluşturun. Elemanlarını 0-50 arası rastgele belirleyin. (spreads kullanmalısınız)

  //a)Bu iki listeyi liste olarak birleştirin

  //b)bu iki listeyi set e aktarın (birleştirin)



  //a)
  List<int> sayilar1 = List.filled(5, 0);//1.liste
  List<int> sayilar2 = List.filled(5, 0);
  Random r = Random();

  sayilar1 = listeDoldur(r);
  print("1.listeden gelenler: $sayilar1");
  sayilar2 = listeDoldur(r); //15-19-26-33-25
  print("2.listeden gelenler: $sayilar2");

  List<int> tumListe = [...sayilar1, ...sayilar2];
  listeyiBastir(tumListe);
}
List<int> listeDoldur(Random random) {
  List<int> listem = List.filled(5, 0);
  for (int i = 0; i <= 4; i++) {
    int sayi = random.nextInt(50);
    listem[i] = sayi;
  }
  return listem;
}
void listeyiBastir(List<int> gelenTumListe) {
  for (int s in gelenTumListe) {
    print(s);
  }

  b)
    List<int> numberOneList = List.filled(5, 0);
  List<int> numberTwoList = List.filled(5, 0);
  Random r = Random();
  numberOneList = makeList(r);
  print("1.listeden gelenler $numberOneList");
  numberTwoList = makeList(r);
  print("2.listeden gelenler $numberTwoList");

  Set<int> allList = {...numberOneList, ...numberTwoList};
  takeList(allList);
} //Main bitiş

List<int> makeList(Random random) {
  List<int> myList = List.filled(5, 0);
  for (int i = 0; i < myList.length; i++) {
    int sayi = random.nextInt(50);
    myList[i] = sayi;
  }
  return myList;
}

void takeList(Set<int> getList) {
  for (int s in getList) {
    print(s);
  }
//Kullanıcıdan aldığınız int türünde pozitif sayılar alın ve listede tutun eğer kullanıcı 0 ya da negatif sayı girerse döngüyü sonlandırıp pozitif olarak girilen sayıların toplamını ekrana yazdırın.
 ekranaYazdir();

  List<int> sayilariAl() {
  List<int> sayilar = [];
  int sayac = 0;
  while (true) {
    sayac++;
    stdout.write("$sayac. sayıyı giriniz: ");
    int sayi = int.parse(stdin.readLineSync()!);
    if (sayi > 0) {
      sayilar.add(sayi);
    } else {
      break;
    }
  }
  return sayilar;
}
void ekranaYazdir() {
  List<int> gelenListe = sayilariAl();
  int toplam = 0;
  for (int s in gelenListe) {
    toplam += s;
  }
  print("****** Girilen sayılar ********");
  print("Gelen sayılar: $gelenListe");
  print("****** Sayıların Toplamı ********");
  print("sayıların toplamı : $toplam");
}



//Örnek 1)Kullanıcıdan ad-soyad, yas, şehir, çalışıyorMu bilgisi alıp map e kaydedicez. Sonra bilgileri yazdırcaz

  Map<String, dynamic> userInfo = {};
  stdout.write("Lütfen adınızı soyadınız giriniz: ");
  String? adSoyad = stdin.readLineSync();
  userInfo["ad_soyad"] = adSoyad!;
  stdout.write("Lütfen yaşınızı giriniz: ");
  int yas = int.parse(stdin.readLineSync()!);
  userInfo["yas"] = yas;
  stdout.write("Lütfen memleketinizi giriniz: ");
  String? memleket = stdin.readLineSync();
  userInfo["memlek"] = memleket;
  stdout.write("Çalışıyor musunuz? evet ise E ye hayır ise H ye basınız: ");
  String? calisiyorMusun = stdin.readLineSync();
  calisiyorMusun == "E"
      ? userInfo["calisiyorMu"] = true
      : userInfo["calisiyorMu"] = false;

  for (var kisi in userInfo.entries) {
    print("${kisi.key} : ${kisi.value}");
  }//16:40



  !!!!
  //Mapleri listenin elemanı olarak eklerseniz. map olarak listeye kaydolur yani listenin her alanı bir map.
  Map<String, int> sayilar = {"Bilal": 38, "Meriç": 28, "Safiye": 30};
  Map<String, int> sayilar2 = {"Bilal": 23, "Meriç": 17, "Safiye": 11};
  //1.ekleme
  //List<dynamic> listem = [sayilar,sayilar2];

  //2.ekleme
  List<dynamic> listem = [];
  listem.add(sayilar);
  listem.add(sayilar2);
  print(listem);


  //Elemanlara nasıl ulaşırım. Mesela 1.listedeki meriç in 28 sayısına ulaşmak istersem:
  Map<String, int> sayilar = {"Bilal": 38, "Meriç": 28, "Safiye": 30};
  Map<String, int> sayilar2 = {"Bilal": 23, "Meriç": 17, "Safiye": 11};
  List<dynamic> listem = [];
  listem.add(sayilar);
  listem.add(sayilar2);
  print(listem[1]["Safiye"]);

   //Listenin içindeki tüm meriçlere ulaşmak istersem
  Map<String, int> sayilar = {"Bilal": 38, "Meriç": 28, "Safiye": 30};
  Map<String, int> sayilar2 = {"Bilal": 23, "Meriç": 17, "Safiye": 11};
  List<dynamic> listem = [];
  listem.add(sayilar);
  listem.add(sayilar2);

  for (int i = 0; i < listem.length; i++) {
    print(listem[i]["Meriç"]);
  }


//Örnek2)Stok takip uygulaması. ürün adı, urun fiyat, urun adet, stok durumu Sonra bilgileri yazdırcaz ama kullanıcı istediği kadar map ekleyebilir.
  //A)kullanıcılarımızın adını getir

  //B)kullanıcılarımızın şehirlerinği getir
  stokTakip();
  
  void stokTakip() {
  List<dynamic> stokListem = [];
  while (true) {
    stdout.write(
      "Ürün eklemek için 1' e, eklediğiniz ürünler listelemek için 2' e, çıkış yapmak için herhangi bir tuşa basınız: ",
    );
    String? secim = stdin.readLineSync();
    if (secim == "1") {
      Map<String, dynamic> urun = {};
      stdout.write("Lütfen ürün adını giriniz: ");
      String? urunAd = stdin.readLineSync();
      urun["urun_ad"] = urunAd;
      stdout.write("Lütfen ürün fiyatını giriniz: ");
      double urunFiyat = double.parse(stdin.readLineSync()!);
      urun["urun_fiyat"] = urunFiyat;
      stdout.write("Lütfen ürün adedini giriniz: ");
      int urunAdet = int.parse(stdin.readLineSync()!);
      urun["urun_adet"] = urunAdet;
      stdout.write("Ürün stokta varsa E yoksa H ye basınız: ");
      String? stokDurumu = stdin.readLineSync();
      stokDurumu == "E" ? urun["urun_stok"] = true : urun["urun_stok"] = false;
      stokListem.add(urun);
    } else if (secim == "2") {
      for (int i = 0; i < stokListem.length; i++) {
        print("listedeki ürün adları : ${stokListem[i]["urun_ad"]}");
      }
    } else {
      break;
    }
  }

    //en sevdiğini 4 arkadaşınızın ad_asoyad, yaşı, tuttuğu takım, sevdiği renk bilgilerini map ile alın listeye ekleyip ekrana yazdırın.
  List<dynamic> myfriends = [];
  for (int i = 0; i < 2; i++) {
    Map<String, dynamic> myfriend = {};
    stdout.write("Lütfen ${i + 1}. arkadaşınızın adını soyadını giriniz: ");
    String? name = stdin.readLineSync();
    myfriend["name"] = name;
    stdout.write("Lütfen ${i + 1}. arkadaşınızın yaşını giriniz: ");
    int age = int.parse(stdin.readLineSync()!);
    myfriend["age"] = age;
    stdout.write("Lütfen ${i + 1}. arkadaşınızın takımını giriniz: ");
    String? team = stdin.readLineSync();
    myfriend["team"] = team;
    stdout.write("Lütfen ${i + 1}. arkadaşınızın sevdiği rengi giriniz: ");
    String? color = stdin.readLineSync();
    myfriend["color"] = color;
    myfriends.add(myfriend);
  }
  print("******* Arkadaş Listeniz **************");
  for (var friend in myfriends) {
    print(friend["name"]);
  }

  */


}
