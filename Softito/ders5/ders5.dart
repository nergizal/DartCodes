import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  /*

  -Belirli işlemleri temsil eden yapılardır.
  -Kullanma amacımız kod düzenidir. tekrarlanan kod yapılarının önüne geçmektir.
  -Programlamayı daha basit ve pratik hale getirir.
  -Kodun okunmasına fayda sağlar.

  dönüş_türü fonksiyon adı(parametre?){

      kodlar buraya yazılır

      return => eğer bir dönüş değeri varsa
  
  }

  dönüş türü:
  void: boş birşey döndürmemek
  string, int, bool, double veri türüde döndürebilir => returne kullanılır.

  parametre: fonskiyonun işlemleri yapmak için ihtiyaç duyduğu bilgilerdir. Olmak zorunda değil ama olursa string, int, bool, double veri türüde değerlerdir.

  -Fonksiyonlar çağrılmadan çalışmaz. Çağırmak için main içersine fonksiyon_adi(); ifadesini yazmalısınız.

  -Dart dilinde void yazılmak zorunda değildir. Zaten fonksiyon adının yanına birşey yazılmadıysa sistem onu değer döndürmeyen yani void fonksiyon olarak algılar.

  -Console kısmında fonksiyonlar main dışında tanımlanmalıdır.

  -Fonksiyonlar 4 e ayrılır.
  1)Geri değer döndürmeyen ve parametre almayan fonksiyon:

  void selamVer(){

    print("Merhaba");
  
  }


  2)Geri değer döndürmeyen parametre alan fonksiyonlar
  void selamVer(String name){
    print("Selam $name");İ
  }

  3)Geri değer döndüren parametre almayan fonksiyonlar

  donus_degeri fonskiyon_adi(){
    İşlemler

    return donus_degeri_türünde_değişken
  }

  print(deger);

  String selamVer() {

  return "Merhaba";
}


 

  //Kullanıcının isme göre selam veren fonksiyon

  selamVer("Bilal");

   selamVer(String name) {
  //name : Sedat
  print("Selam $name"); //Sedat
}

  //Kullanıcıdan aldığı 2 sayıyı toplayan fonksiyonu yazalım
  toplama(50,60);

  toplama(int sayi1, int sayi2) {
  print("$sayi1 + $sayi2 = ${sayi1 + sayi2}");
}

 //Kullanıcı console kısmındna ismini girsin ona selam verelim.

  stdout.write("Lütfen adınızı giriniz: ");
  String? ad = stdin.readLineSync();
  selamVer(ad!);

//Main dışında
  selamVer(String name) {
  //name = ad
  print("Hoşgeldin $name");
}

//Kullanıcıdan aldığımı iki veri arasında çıkarma işlemi

  stdout.write("Lütfen birinci sayıyı giriniz: ");
  double say1 = double.parse(stdin.readLineSync()!);
  stdout.write("Lütfen ikinci sayıyı giriniz: ");
  double say2 = double.parse(stdin.readLineSync()!);

  cikarma(say1, say2);

  void cikarma(var a, var b) {
  print("$a - $b = ${a - b}");
}

//1 den 20 e kadar olan sayıları ekrana yazdırın

  sayiYazdir();

  void sayiYazdir() {
  for (int i = 1; i <= 20; i++) {
    print(i);
  }
}

 //Kullanıcıdan başlangıç değerini alan 20 ye kadar yazdıran fonksiyon
  sayiIste("başlangıç");
  int sayi = int.parse(stdin.readLineSync()!);
  basDegeri(sayi);

  void basDegeri(int bas) {
  for (int i = bas; i <= 20; i++) {
    print(i);
  }
}

void sayiIste(String metin) {
  stdout.write("Lütfen $metin sayısını giriniz: ");
}

  //Kullanıcıdan bitiş değerini alan 1 den o değere kadar yazdıran fonksiyon

  sayiIste("bitiş");
  int sayi = int.parse(stdin.readLineSync()!);
  bitisAlYaz(sayi);

  void bitisAlYaz(int bit) {
  for (int i = 1; i <= bit; i++) {
    print(i);
  }
}

void sayiIste(String metin) {
  stdout.write("Lütfen $metin sayısını giriniz: ");
}

//Kullanıcıdan her ikisini de alan ve yazdıran fonksiyon

  sayiIste("başlangıç");
  int bas = int.parse(stdin.readLineSync()!);
  sayiIste("bitiş");
  int bit = int.parse(stdin.readLineSync()!);
  basBitAl(bas, bit);


  void basBitAl(int bas, int bit) {
  for (int i = bas; i <= bit; i++) {
    print(i);
  }
}

void sayiIste(String metin) {
  stdout.write("Lütfen $metin sayısını giriniz: ");
}

  //Kullanıcıdan yaşını isteyip yaşını hesaplayan fonksiyon

  while (true) {
    yilIste("doğum");
    int myBirthday = int.parse(stdin.readLineSync()!);
    stdout.write(
      "Şuanki yaşınızı bulmak için 1 e kendi gireceğiniz bir tarih için 2 ye basınız: ");
    String? secim = stdin.readLineSync();
    yasHesaplama(myBirthday, secim!);
  }

  void yasHesaplama(int birthday, String selected) {
  int age = 0;
  if (selected == "1") {
    int nowYear = DateTime.now().year;
    age = nowYear - birthday;
  } else {
    stdout.write("Lütfen hesaplatmak istediğiniz yılı giriniz: ");
    int myYear = int.parse(stdin.readLineSync()!);
    age = myYear - birthday;
  }
  print("Girdiğiniz yıla göre yaşınız $age");
}
void yilIste(String metin) {
  stdout.write("Lütfen $metin yılınızı giriniz: ");
}

//Kullanıcın girdiği sayının tek mi çift mi olduğunu hesaplayan program
  while (true) {
    stdout.write("Lütfen bir sayı giriniz: ");
    int sayi = int.parse(stdin.readLineSync()!);
    tekMiCiftMi(sayi);
  }

  void tekMiCiftMi(int a) {
  a % 2 == 0
      ? print("Girdiğiniz $a sayısı çift sayıdır")
      : print("Girdiğiniz $a sayısı tek sayıdır");


       //Kullanıcın girdiği sayının pozitif mi negatif mi olduğunu hesaplayan program
        genelIslemler();

        void genelIslemler() {
        while (true) {
        stdout.write("Lütfen bir sayı giriniz: ");
        int sayi = int.parse(stdin.readLineSync()!);
        pozNegKontrol(sayi);
  }

  
}
}

void pozNegKontrol(int s) {
  if (s > 0) {
    print("Girdiğiniz $s sayısı pozitif bir sayı");
  } else if (s < 0) {
    print("Girdiğiniz $s sayısı negatif bir sayı");
  } else {
    print("Girdiğiniz $s sayısının işareti yoktur");
  }
}

//Kullanıcın girdiği sayının mutlak değerini alan programı yazın
  genelIslemler();

  void genelIslemler() {
  while (true) {
    stdout.write("Lütfen bir sayı giriniz: ");
    int sayi = int.parse(stdin.readLineSync()!);
    
  }

  void mutlakYap(int s) {
  int pozNum = s.abs();
  print("Girdiğiniz $s sayısının mutlak değeri $pozNum");
}

//Kullanıcının girdiği sayıyı yaptığı seçime göre işleme sokan programı yazın
  genelIslemler();


void genelIslemler() {
  while (true) {
    stdout.write("Lütfen bir sayı giriniz: ");
    int sayi = int.parse(stdin.readLineSync()!);
    stdout.write(
      "Lütfen işlemi seçin: tek çift kontrolü için 1 e \n işaret kontrolü için 2 ye\n kök almak için 3 e\n mutlak değer almak için 4 e basın: ",
    );
    String? secim = stdin.readLineSync();
    switch (secim) {
      case "1":
        tekMiCiftMi(sayi);
        break;

      case "2":
        pozNegKontrol(sayi);
        break;

      case "3":
        kokAl(sayi);
        break;
      case "4":
        mutlakYap(sayi);
        break;

      default:
        print("Yanlış seçim");
        break;
    }
  }

  void mutlakYap(int s) {
  int pozNum = s.abs();
  print("Girdiğiniz $s sayısının mutlak değeri $pozNum");
}

void kokAl(int s) {
  double kok = sqrt(s);
  if (s >= 0) {
    print("Girdiğiniz $s sayısının karekökü $kok");
  } else {
    print("Lütfen negatif bir sayı girmeyin");
  }
}

void pozNegKontrol(int s) {
  if (s > 0) {
    print("Girdiğiniz $s sayısı pozitif bir sayı");
  } else if (s < 0) {
    print("Girdiğiniz $s sayısı negatif bir sayı");
  } else {
    print("Girdiğiniz $s sayısının işareti yoktur");
  }
}

void tekMiCiftMi(int a) {
  a % 2 == 0
      ? print("Girdiğiniz $a sayısı çift sayıdır")
      : print("Girdiğiniz $a sayısı tek sayıdır");
}

 //Kullanıcının girdiği sayıya göre karenin alanını hesaplayan programı yazın
  genelIslemler();

  void genelIslemler() {
  while (true) {
    kareAlan();
  }
}

void kareAlan() {
  stdout.write("Lütfen karenın kenar uzunluğunu giriniz: ");
  double kenar = double.parse(stdin.readLineSync()!);
  double alan = kenar * kenar;
  print("Kenar uzunluğu $kenar olan karenin alanı : $alan 'dır");
}

//Kullanıcının girdiği sayıya göre dikdörtgenin alanını hesaplayan programı yazın
  genelIslemler();



void genelIslemler() {
  while (true) {
    kareAlan();
  }
}

void dikdortgenAlan() {
  stdout.write("Lütfen dikdörtgenin biririn kenar uzunluğunu giriniz: ");
  double kenar1 = double.parse(stdin.readLineSync()!);
  stdout.write("Lütfen dikdörtgenin ikinci kenar uzunluğunu giriniz: ");
  double kenar2 = double.parse(stdin.readLineSync()!);
  double alan = kenar1 * kenar2;
  print(
    "Kenar uzunlukları $kenar1 ve $kenar2 olan dikdörtgenin alanı $alan 'dır",


    //Kullanıcının girdiği sayıya göre yamuk alanını hesaplayan programı yazın
    genelIslemler();
  );

  void genelIslemler() {
  while (true) {
    yamukAlan();
  }
}
}

void yamukAlan() {
  stdout.write("Lütfen üst taban uzunluğunu giriniz: ");
  double ustTaban = double.parse(stdin.readLineSync()!);
  stdout.write("Lütfen alt taban uzunluğunu giriniz: ");
  double altTaban = double.parse(stdin.readLineSync()!);
  stdout.write("Lütfen yükseklik uzunluğunu giriniz: ");
  double h = double.parse(stdin.readLineSync()!);
  double alan = ((altTaban + ustTaban) * h) / 2;
  print("Girilen bilgilere göre alan: $alan");

  //Kullanıcının girdiği secime göre alanı hesaplayan programı yazın
  genelIslemler();

}

void genelIslemler() {
  while (true) {
    stdout.write(
      "Merhaba. Lütfen bir seçim yapın. Karenin alanı için 1' e Dikdörtgen alanı için 2'ye Dairenin alanı için 3' e Yamuğun alanı için 4'e basınız: ",
    );

    String? secim = stdin.readLineSync();

    switch (secim) {
      case "1":
        kareAlan();
        break;
      case "2":
        dikdortgenAlan();
        break;
      case "3":
        daireAlan();
        break;
      case "4":
        yamukAlan();
        break;
    }
  }
}

void yamukAlan() {
  stdout.write("Lütfen üst taban uzunluğunu giriniz: ");
  double ustTaban = double.parse(stdin.readLineSync()!);
  stdout.write("Lütfen alt taban uzunluğunu giriniz: ");
  double altTaban = double.parse(stdin.readLineSync()!);
  stdout.write("Lütfen yükseklik uzunluğunu giriniz: ");
  double h = double.parse(stdin.readLineSync()!);
  double alan = ((altTaban + ustTaban) * h) / 2;
  print("Girilen bilgilere göre alan: $alan");
}

void daireAlan() {
  stdout.write("Lütfen yarı çap uzunluğunu giriniz: ");
  double yariCap = double.parse(stdin.readLineSync()!);
  double alan = yariCap * yariCap * 3;
  //double alan = 3 * pow(yariCap, 2).toDouble();
  print("Yarı çapı $yariCap olan dairenin alanı $alan ' dır");
}

//16:08 ara
//16:08-:16:23
//16:23 - 18:07

void dikdortgenAlan() {
  stdout.write("Lütfen dikdörtgenin biririn kenar uzunluğunu giriniz: ");
  double kenar1 = double.parse(stdin.readLineSync()!);
  stdout.write("Lütfen dikdörtgenin ikinci kenar uzunluğunu giriniz: ");
  double kenar2 = double.parse(stdin.readLineSync()!);
  double alan = kenar1 * kenar2;
  print(
    "Kenar uzunlukları $kenar1 ve $kenar2 olan dikdörtgenin alanı $alan 'dır",
  );
}

void kareAlan() {
  stdout.write("Lütfen karenın kenar uzunluğunu giriniz: ");
  double kenar = double.parse(stdin.readLineSync()!);
  double alan = kenar * kenar;
  print("Kenar uzunluğu $kenar olan karenin alanı : $alan 'dır");
}

//Kullanıcıdan başlangıç sayısı bitiş sayısı alıp girdiği değer aralığının toplamını ekrana yazdıran programı yazın(fonksiyon kullanarak ve parametre kullanarak)
  genelIslemler();


  void genelIslemler() {
  while (true) {
    stdout.write("Lütfen başlangıç değerini giriniz: ");
    int bas = int.parse(stdin.readLineSync()!);
    stdout.write("Lütfen bitiş değerini giriniz: ");
    int bit = int.parse(stdin.readLineSync()!);
    sayilariTopla(bas, bit);
  }
}

void sayilariTopla(int bas, int bit) {
  int toplam = 0;
  for (int i = bas; i <= bit; i++) {
   toplam += i; //toplam = toplam + i;
  
  }
  print("Girinel sayı aralığının toplamı : $toplam");
}

 //Kullanıcıdan bir sayı isteyip o sayının faktöriyelini hesaplayan program
  genelIslemler();
void genelIslemler() {
  while (true) {
    stdout.write("Lütfen sayıyı giriniz: ");
    int sayi = int.parse(stdin.readLineSync()!);
    faktoriyelHesaplama(sayi);
  }
}

void faktoriyelHesaplama(int sayi) {
  int faktoriyel = 1;
  for (int i = 1; i <= sayi; i++) {
    faktoriyel *= i;
  }
  print("Girdiğiniz $sayi sayısının $sayi! = $faktoriyel");
}

      Var sayılan parametre örneği

       genelIslemler();

       void genelIslemler() {
  while (true) {
    stdout.write("Lütfen yarı çapı giriniz: ");
    int r = int.parse(stdin.readLineSync()!);
    stdout.write("Lütfen pi sayısını giriniz: ");
    String? myPi = stdin.readLineSync();
    if (myPi != "") {
      double myPiDouble = double.parse(myPi!);
      daireAlan(r, myPiDouble);
    } else {
      daireAlan(r);
    }
  }
}

void daireAlan(int yariCap, [double myPi = 3.14]) {
  double alan = yariCap * yariCap * myPi;
  print("Sonuc: $alan");
}

Varsayılan parametre örneği


void genelIslemler() {
  while (true) {
    stdout.write("Lütfen adınızı giriniz: ");
    String? ad = stdin.readLineSync();
    stdout.write("Lütfen mesleğinizi giriniz: ");
    String? meslek = stdin.readLineSync();
    stdout.write("Lütfen yaşınızı giriniz: ");
    String? yas = stdin.readLineSync();
    stdout.write("Lütfen cinsiyetinizi giriniz: ");
    String? cinsiyet = stdin.readLineSync();
    if (cinsiyet == "") {
      bilgiAl(ad!, meslek!, yas!);
    } else {
      bilgiAl(ad!, meslek!, yas!, cinsiyet!);
    }
  }
}

void bilgiAl(String a, String m, String y, [String c = "Belirtmedi"]) {
  print("Merhaba adınız: $a - Mesleğiniz: $m - Yaşınız: $y - Cinsiyet: $c");
}

Selam döndüren bir fonksiyon örneği:

Çağırma 1: 

  print(selamVer());

Çağırma 2: 
  String deger = selamVer();
  print(deger);

String selamVer() {

  return "Merhaba";
}


 

  //Kullanıcının girdiği doğum tarihine göre çocuk genç yaşlı şeklinde bir kontrol olsun
  //Ehliyet kontrolü

  stdout.write("Lütfen doğum tarihinizi giriniz: ");
  int dt = int.parse(stdin.readLineSync()!);
  int yas = yasHesaplama(dt);
  ehliyetKontrol(yas);
  durumKontrol(yas);
}
int yasHesaplama(int dogumTarihi) {
  int yas = 2025 - dogumTarihi;
  return yas;
}
void ehliyetKontrol(int age) {
  if (age >= 18) {
    print("Alabilirsin");
  } else {
    print("Alamazsın");
  }
}
void durumKontrol(int age) {
  if (age >= 0 && age <= 18) {
    print("Sen çocuksun");
  } else if (age >= 19 && age <= 34) {
    print("Sen Gençsin");
  } else {
    print("Olgun");
  }





  bool hayattaMisin(int can) {
  if (can > 0) {
    return true;
  } else {
    return false;
  }
}

void atesEt(bool isLive) {
  if (isLive) {
    print("Ateş");
  } else {
    print("Sen ölüsün");
  }
}

stdout.write("Canı girin: ");
  int can = int.parse(stdin.readLineSync()!);
  bool yasiyorMusun = hayattaMisin(can);
  atesEt(yasiyorMusun);
  kos(yasiyorMusun);

void kos(bool isLive) {
  if (isLive) {
    print("Koş");
  } else {
    print("Ne koşması otur oturduğun yerde ölüsün");
  }
}

   */
}















