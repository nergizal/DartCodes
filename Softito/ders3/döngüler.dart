import 'dart:io';

void main(List<String> args) {
  /*
    DÖNGÜLER
    -Belirli bir kodları tekrarlı çalıştırma amacıyla kullanılır.
    -Veri tabanındaki veriler çekmek. 

    -Döngü Türleri
    for
    while

    for 1.Tür
    for(değişken_tipi degisken_adi = başlangıç değeri; koşul; artış değeri){
    }

    //0 den 10 a kadar olan sayıları yazdıralım
  //1.kullanım
  for (var i = 0; i <= 10; i++) {
    print(i);
  }

  //2.kullanım
  for (var i = 0; i < 11; i++) {
    print(i);
  }

  //3.kullanım
  for (var i = 0; i <= 10; i += 1) {
    print(i);
  }

  //5 ten başlayıp 22 ye kadar olan sayıları yazdıralım

  for (var i = 5; i <= 22; i++) {
    print(i);
  }

  Ekrana adımı 5 kere yazdıralım

  for (int i = 1; i <= 5; i++) {
    print("Bilal");
  }

    //Ekrana beş kere takımımı yazdır ama başında sıralama sayısı olsun

    1.Fenerbahçe
    2.Fenebahçe
    
    for (var i = 1; i < 6; i++) {
    print("$i.Fenerbahçe");
  }

  //ekrana 0 dan 23 e kadar olan çift sayıları yazdırmak istiyorum

  for (var i = 0; i < 24; i += 2) {
    print(i);
  }

  //ekrana 0 dan 23 e kadar olan çift sayıları yazdırmak istiyorum

  for (var i = 0; i < 24; i += 2) {
    print(i);
  }

  //Ekrana 1 den 40 a kadar olan tek sayıları yazdırın

  for (var i = 1; i <= 40; i += 2) {
    print(i);
  }

  //Başlangıç ve bitiş değeri dışarıdan alınan for örneği
  var bas = 7;
  var bit = 19;

  for (var i = bas; i <= bit; i++) {
    print(i);
  }

  //Kullanıcıdan aldığımız veriyi göre 1 den başlayıp ardışık giden sayıları kullanıcının girdiği sayıya kadar yazdıran programı yazdıralım
  
  stdout.write(
    "Lütfen 1 den kaça kadar saymasını istiyorsanız bitiş değerini giriniz: ",
  );

  int lastNumber = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= lastNumber; i++) {
    print(i);
  }

  //Kullanıcıdan başlangıç değerini alıp 25 e kadar yazdıralım

  stdout.write("Lütfen kaçtan 25 e kadar yazmasını istiyorsanız yazınız: ");

  int firstCounter = int.parse(stdin.readLineSync()!);

  for (int i = firstCounter; i <= 25; i++) {
    print(i);
  }

  //Kullanıcıdan hem bitiş hem başlangıç değerini alalım
   stdout.write("Lütfen başlangıç değerini giriniz: ");
  int first = int.parse(stdin.readLineSync()!);
  stdout.write("Lütfen bitiş değerini giriniz: ");
  int last = int.parse(stdin.readLineSync()!);

  for (int i = first; i <= last; i++) {
    print(i);
  }


   //Kullanıcı tüm verileri girsin o ne istiyorsa o olsun

  int first, last, counter;

  stdout.write("Başlangıç değerini giriniz: ");
  first = int.parse(stdin.readLineSync()!);
  stdout.write("Bitiş değerini giriniz: ");
  last = int.parse(stdin.readLineSync()!);
  stdout.write("Artış değerini giriniz: ");
  counter = int.parse(stdin.readLineSync()!);

  for (int i = first; i <= last; i += counter) {
    print(i);
  }

  //Başlangıç değeri

  while(kosul){

  Koşul doğru ise işlemleri yapıyorsunuz

  arttırma işlemi
  }


  //While döngüsü ile 1 den 4 kadar (dahil) sayıları yazdır
  int sayac = 1;

  while (sayac <= 4) {
    
    print(sayac);

    sayac++;
  }


  //While döngüsü ile adımızı 10 kere yazdıralım
  int sayac = 1;

  while (sayac <= 10) {
    print("Bilal");

    sayac++;
  }

  //20 den 5 e kadar sayıları azaltarak yazdıralım


      int sayac = 20;

  while (sayac >= 5) {
    print(sayac);
    sayac--;
  }

  for (int i = 20; i >= 5; i--) {
      print(i);
      }


      //Break: döngüyü sonlandırmak için kullandırılır. Bu ifadeden sonra döngü tekrar etmeyi durdurur.

      var sayac = 0;

  while (sayac < 5) {
    if (sayac == 3) {
      break;
    }
    print(sayac); //0 - 1 - 2
    sayac++;
  }

  //Continue : İşlemi pas geçer. Atlama yapar. 

   for (var i = 0; i < 5; i++) {
    if (i == 3) {
      continue;
    }

    print(i);
  }

  //sonsuz döngü break işlemi yapılmadığı sürece sürekli devam eden döngüdür

  int i = 0;
  while (true) {
    print(i);

    i++;
  }

  //sonsuz döngüyü durdurmak

    int i = 0;
  while (true) {
    if (i == 50) {
      break;
    }
    print(i);
    i++;
  }

   //Kullanıcının adını soy adını alıp ekrana yazdıran program.

  while (true) {
    print(
      "Uygulamamıza hoş geldiniz çıkış için q devam etmek için e ye basın: ",
    );
    String? secim = stdin.readLineSync();

    if (secim == "e" || secim == "E") {
      stdout.write("Lütfen adınızı giriniz: ");
      String? name = stdin.readLineSync();
      stdout.write("Lütfen soyadınızı giriniz: ");
      String? lastName = stdin.readLineSync();
      print("Hoşgeldin $name - $lastName");
    } else if (secim == "q" || secim == "Q") {
      break;
    }
  }

//1 den 100 kadar olan çift sayıları yazdır

  //for

  for (int i = 1; i <= 100; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }

  int sayi = 1;
  while (sayi <= 100) {
    if (sayi % 2 == 0) {
      print(sayi);
    }

    sayi++;
  }

  //Sonsuz döngü şeklinde kullanıcıdan fiyat ve kdv oranı alıp vergili satış fiyatı bulunan program

  while (true) {
    stdout.write("Lütfen işlem yapmak için q(Çıkış) ya da a(işlem) basın: ");
    String? secim = stdin.readLineSync();
    if (secim == "A" || secim == "a") {
      stdout.write("Lütfen ücreti giriniz: ");
      int price = int.parse(stdin.readLineSync()!);
      stdout.write("Lütfen KDV oranını giriniz: ");
      int kdv = int.parse(stdin.readLineSync()!);
      double result = (price * (100 + kdv)) / 100;
      print("$price ücretinin $kdv oranı ile oluşan yeni fiyatı $result");
    } else if (secim == "Q" || secim == "q") {
      break;
    } else {
      print("Hatalı tuşlama");
    }
  }


  //kullanıcının girdiği sayıdan ikinci girdiği sayıya kadar olan sayıların toplamı

  while (true) {//sonsuz olsun diye
    int toplam = 0; //toplamı tutmamız gereken bir değişken lazım
    stdout.write("Başlangıç sayısını giriniz: "); //birinci sayıyı istiyoruz
    int bas = int.parse(
      stdin.readLineSync()!,
    ); //kullanıcıdan aldığımız veriyi tam sayıya dönüştürdük
    stdout.write("Bitiş sayısını giriniz: "); //ikinci sayıyı istiyoruz
    int son = int.parse(
      stdin.readLineSync()!,
    ); //kullanıcıdan aldığımız veriyi tam sayıya dönüştürdük

    for (int i = bas; i <= son; i++) {
      //kullanıcın girdiği sayıdan ikinci girdiği sayıya kadar döngü sınırı oluşturduk
      toplam += i; //i her arttıkça toplam değişkenine i nin değerini ekledik
    }

    print(
      toplam,
    ); //print işlemini burda yaptık ki döngü dışında en son sonucu direk yazsın diye
  }

   //Bir sayının kuvvetlerini yazan program
  //1)Kullanıcan taban hangi sayı olsun onu alıcaz
  //2)Kaçıncı kuvvete yazdırılsın
  //3)Önemli kullanıcıdan veri alırken sonsuz döngüsü olsun
  //İf kullanımındaki artışa dikkatlice bakın çünkü üslü sayıların anlamı tabanların çarpımıdır o yüzden sayılar çarparak gitmeli. Pow kullanımı şuan yok !

  while (true) { //sonsuz olsun diye
    int result = 1; //çarpım sonucunun tutulacağı değişken
    stdout.write("Lütfen taban sayısını girin: "); //veri istedik
    int taban = int.parse(stdin.readLineSync()!);
    stdout.write("Lütfen kuvvet sayısını girin: "); //veri istedik
    int kuvvet = int.parse(stdin.readLineSync()!); //dönüştürdük

    for (int i = 1; i <= kuvvet; i++) { //kullanıcının girdiği kuvvet kadar döndürdük
      result *=
          taban; //tabanı her seferinde kuvvet miktarı kadar result ile çarptık

      print(result); //her adımı görmek için döngü içinde yazdırdık.
    }
  }

  //Kullanıcının girdiği sayının faktöriyelini hesaplayan program
  //5! = 5*4*3*2*1 = 120

  while (true) {
    stdout.write("Lütfen sayıyı giriniz: ");
    int sayi = int.parse(stdin.readLineSync()!);
    double fak = 1;

    for (int i = 1; i <= sayi; i++) {
      fak *= i;
    }

    print("$sayi! sayısı $fak");
  }

  //İnstagram postu yapın
  //Kullanıcın ekranı şu şekilde olsun:
  //1)giriş sayfası olsun. iki tane pass ve username değişken oluşturun. eğer doğru ise
  //Post atmak için 1 Mesaj yazmak için 2 çıkmak için 3
  //post yapıldı yazsın, mesaj gönderildi yazsın 3 e basarda döngüden çıkılsın
  //Eğer yanlış ise giriş sayfasına geri dönsün

  print("İnstagram'a hoşgeldiniz");
  while (true) {
    String userName = "Bilal";
    String pass = "123456";
    stdout.write("Lütfen kullanıcı adınızı giriniz: ");
    String? myUserName = stdin.readLineSync();
    stdout.write("Lütfen şifrenizi giriniz: ");
    String? myPass = stdin.readLineSync();
    if (userName == myUserName && pass == myPass) {
      print(
        "Post atmak için 1' basınız\n Mesaj göndermek için 2'ye basınız\n çıkış yapmak için 3'e basınız",
      );
      String? secim = stdin.readLineSync();
      if (secim == "1") {
        print("Post gönderildi");
        break;
      } else if (secim == "2") {
        print("Mesaj gönderildi");
        break;
      } else {
        print("Çıkış yapılıyor...");
        break;
      }
    } else {
      print("Kullanıcı bilgileri hatalı tekrar deneyin");
    }
  }

  */
}
