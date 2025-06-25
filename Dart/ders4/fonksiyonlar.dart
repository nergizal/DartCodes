import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  /*
    Random: Rastgele sayı üretmek için kullanılır.
    var intValue = Random().nextInt(); => 0 <= yeniSayi < sayi

    var intValueNew = Random().nextInt(100) + 50; => 50 <= yeniSayi < 150


    Örnek:
    var intValue = Random().nextInt(5);
    print(intValue);


      var newIntNumber =
      Random().nextInt(20) + 10; // 10 dahil 30 dahil değil 10-30 arası

      print(newIntNumber);

      var doubleValue = Random().nextDouble(); // 0.0 <= sayi <1.0
      print(doubleValue);

       var doubleValue = Random().nextDouble() * 256; // 0.0<= sayi < 256.0
       print(doubleValue);

        var boolValue = Random().nextBool(); //true ya da false;
        print(boolValue);

         //Random 1 ile 25 arasında rastgele beş sayı üretelim ve onların toplamını ekrana yazdıralım.

        var r = Random();
        var toplam = 0;

        for (int i = 1; i <= 5; i++) {
          int sayi = r.nextInt(24) + 1;
          print(sayi);
          toplam += sayi;
  }
      print("Girdiğiniz sayıların sonucu: $toplam");

  //Ödev Yukarıdaki Random ile sayı üretme örneğimizde eğer aynı sayıların gelmesini istemiyorsak nasıl yaparız. gelecek olan 5 sayıda farklı olsun.





   //0 ile 100 arasında 6 tane sayı üretelim
  //a) kaç tane çift kaç tane tek sayı ürettiğimizi ekrana yazdıralım.

  int ciftSayi = 0, tekSayi = 0;
  var r = Random();

  for (int i = 1; i <= 6; i++) {
    int sayi = r.nextInt(100);
    print("$i.sayı: $sayi");
    if (sayi % 2 == 0) {
      ciftSayi++;
    } else {
      tekSayi++;
    }
  }

  print(
    "Girdiğiniz sayılarda $ciftSayi tanesi çift sayı, $tekSayi tanesi tek sayıdır.",
  );

  //0 ile 40 arasında sayı oluşturun 5 tane. 20 den büyük ya da eşit olan sayı adedini yazdırın. ekrana sayılarıda yazdırın.

  //58 geçeye kadar

  int myNumber = 0;
  var r = Random();

  for (int i = 1; i <= 5; i++) {
    int sayi = r.nextInt(41);
    print("$i. sayi : $sayi");

    if (sayi >= 20) {
      myNumber++;
    }
  }

  print("20 den büyük ya da eşit $myNumber kadar sayı üretildi");


   //ceil: Girilen virgüllü bir sayıyı bir üst tam sayıya yuvarlar
  double x = 6.88;

  int c = x.ceil();
  print(c);


  //floor: sayıyı virgülden kurtarır ya da bir alt tam sayıya yuvalar

  double x = 6.9;
  int f = x.floor();
  print(f);


   //sqrt: girilen sayının karekök değerini alır. Uyarı!! sqr işlemi double çıkabileceği için verği kaybı yaşamamak için double değişken kullanın örnek s değişkeni

  double x = 20;

  double s = sqrt(x);
  print(s);



  //abs: Mutlak değer fonksiyonudur. Girilen sayıyı pozitife dönüştürür. 

  int a = 10;

  int b = -18;

  int c = a.abs();

  print(c);

  int d = b.abs();

  print(d);

  //max: Girilen iki sayıdan büyük olanı seçer

  int mx = max(50, 26);

  print(mx);

  //min: Girilen iki sayıdan küçük olanını seçer.
   int mn = min(86, 43);
   print(mn);

   //pow: girilen iki sayıdan birincisi taban ikincisi üst olacak şekilde üslü ifadesini bulur.

  var p = pow(2, 3);
  print(p);

   //Kullanıcının girdiği 5 sayıdan büyük olanını ekrana yazdırın.

  //pow: girilen iki sayıdan birincisi taban ikincisi üst olacak şekilde üslü ifadesini bulur.

  var p = pow(0.3, 4); //+ + ,  - - ,  + -, - +, double, int
  print(p);


  


    //kullanıcıdan üretilecek sayı miktarını isteyin en yüksek sayıyı girin  üretilen sayıların toplamını bulan programı. 

   //Lütfen üretilmesini istediğiniz sayı adedini girin(döngünün ne kadar döneceği)
   //lütfen üretilecek sayının maksimum değerini girin.(0 ile kaç arasında sayı alabileceği Dikkat!! adamın girdiği sayı dahil olsun)
   //Sayılar görünsün print.(sayıları oluştuktan sonra ekrana yazdır)
   //Toplamı ekrana yazdırın.(toplam sonucu yazdırmak)


    stdout.write("Lütfen kaç adet sayı üretilmesini istediğinizi yazınız: ");
  int count = int.parse(stdin.readLineSync()!);
  stdout.write("Lütfen üretilebilecek sayının en üst sınırını giriniz: ");
  int topLimit = int.parse(stdin.readLineSync()!);
  var r = Random();
  int sum = 0;

  for (int i = 1; i <= count; i++) {
    int getNumber = r.nextInt(topLimit + 1);
    print("$i. sayı = $getNumber");

    sum += getNumber;
  }

  print("Girdiğiniz $count adet sayının toplamı : $sum");

   //bunu dışarıda yapacaksın
  //kullanıcıdan bir sayı isteyin karekökünü alın (bu sayıyı negatif olma ihtimaline karsı abs ile pozitif yapın) çıkan sonucu virgülden kurtarın(floor) ve bu en son

  //for
  //oluşan sayı kadar random sayı üretin (0 ile 100 olsun) bu sayıların toplamını bulan program.

  //-18 => 18 => karakökünü alın 4.75268 => 4 => 4 kere döndürüp 4 tane sayı toplamını bulun

  stdout.write("Lütfen bir sayı giriniz: ");//Kullanıcıdan veri istedik

  double inputNumber = double.parse(stdin.readLineSync()!);//Kullanıcıdan aldığımız string veriyi double a çevirdik
  double plusNumber = inputNumber.abs();//kullanıcıdan aldığımız double verinin mutlak değerini aldık
  double sqrtNumber = sqrt(plusNumber);//abs ile pozitif yaptığımız double sayıyının karekökünü aldık
  int lastNumber = sqrtNumber.floor();//karekökü alınan double sayının virgül kısmını silip int yaptık
  int sum = 0;//toplam değerinin tutulması için değişken oluşturduk
  var r = Random();//random sayı üretmek için değişken oluşturduk
  for (int i = 1; i <= lastNumber; i++) {//kullanıcının girdiği sayıyı düzenlediğimizde oluşan sayıyı koşul aldık
    int randomNumber = r.nextInt(101);//0 dan 100 e kadar random sayı ürettik
    print("$i. sayı: $randomNumber");//oluşan sayılar ekranda görünsün diye yazdırdık
    sum += randomNumber;//oluşan her sayıyı sum değişkenine ekledik
  }

  print("Girilen $lastNumber adet sayının toplamı: $sum");//döngü bitince oluşan toplam değeri ekrana yazdırdık


   //200 ve 80
  //Kullanıcıdan iki sayı alın. büyük olan kadar random alınabilecek üst değeri belirleyin.(0 ile 200) küçük olan sayının karakökünün üste yuvarlanmış hali de sayı adedini belirlesin(döngünün dönme değeri) oluşan sayıların toplamını ekrana yazdırın.

  stdout.write("Lütfen bir tam sayı giriniz: "); //Kullanıcıdan veriyi aldık
  int numberOne =
      double.parse(
        stdin.readLineSync()!,
      ).toInt(); //kullanıcının double girme ihtimali için gelen string veriyi önce double yaptık sonra sayıdan sayıya dönüşüm metodlarından toInt ile int e dönüştürdük
  stdout.write(
    "Lütfen ikinci tam sayıyı giriniz: ",
  ); //Kullanıcıdan veriyi aldık
  int numberTwo =
      double.parse(
        stdin.readLineSync()!,
      ).toInt(); //kullanıcının double girme ihtimali için gelen string veriyi önce double yaptık sonra sayıdan sayıya dönüşüm metodlarından toInt ile int e dönüştürdük
  int bigNumber = max(numberOne, numberTwo); //en büyük sayıyı bulduk
  int smallNumber = min(numberOne, numberTwo); //en küçük sayıyı bulduk
  double sqrtNumber = sqrt(smallNumber); //Karekökünü aldık
  int ceilNumber =
      sqrtNumber.ceil(); //kök sayısı virgüllü de çıkabilir diye üste yuvarladık
  var r = Random(); //Random değişken oluşturduk
  int sum = 0; // toplam değişkeni oluşturduk
  for (int i = 1; i <= ceilNumber; i++) {
    //küçük sayı işleme soktuğumuzda çıkan sayı kadar döngüyü döndür
    int randomNumber = r.nextInt(
      bigNumber + 1,
    ); //büyük sayıya kadar(dahil) random sayılar oluşturduk
    print("$i. sayı : $randomNumber"); //sayıları ekrana yazdırdık
    sum += randomNumber; //oluşan random sayıları sum değişkenine ekledik
  }
  print("Girilen sayıların toplamı $sum"); //Ekrana yazdırdık



  //200 ve 80
  //Kullanıcıdan iki sayı alın. büyük olan kadar random alınabilecek üst değeri belirleyin.(0 ile 200) küçük olan sayının karakökünün üste yuvarlanmış hali de sayı adedini belirlesin(döngünün dönme değeri) oluşan sayılardan 3 ün katı olanların toplamını ekrana yazdırın.
 

  stdout.write("Lütfen bir tam sayı giriniz: "); //Kullanıcıdan veriyi aldık
  int numberOne =
      double.parse(
        stdin.readLineSync()!,
      ).toInt(); //kullanıcının double girme ihtimali için gelen string veriyi önce double yaptık sonra sayıdan sayıya dönüşüm metodlarından toInt ile int e dönüştürdük
  stdout.write(
    "Lütfen ikinci tam sayıyı giriniz: ",
  ); //Kullanıcıdan veriyi aldık
  int numberTwo =
      double.parse(
        stdin.readLineSync()!,
      ).toInt(); //kullanıcının double girme ihtimali için gelen string veriyi önce double yaptık sonra sayıdan sayıya dönüşüm metodlarından toInt ile int e dönüştürdük
  int bigNumber = max(numberOne, numberTwo); //en büyük sayıyı bulduk
  int smallNumber = min(numberOne, numberTwo); //en küçük sayıyı bulduk
  double sqrtNumber = sqrt(smallNumber); //Karekökünü aldık
  int ceilNumber =
      sqrtNumber.ceil(); //kök sayısı virgüllü de çıkabilir diye üste yuvarladık
  var r = Random(); //Random değişken oluşturduk
  int sum = 0; // toplam değişkeni oluşturduk
  for (int i = 1; i <= ceilNumber; i++) {
    //küçük sayı işleme soktuğumuzda çıkan sayı kadar döngüyü döndür
    int randomNumber = r.nextInt(
      bigNumber + 1,
    ); //büyük sayıya kadar(dahil) random sayılar oluşturduk
    print("$i. sayı : $randomNumber"); //sayıları ekrana yazdırdık
    if (randomNumber % 3 == 0) {
      sum += randomNumber; //oluşan random sayıları sum değişkenine ekledik
    }
  }
  sum != 0
      ? print("Girilen sayıların toplamı $sum")
      : print("Üzgünüm gelen hiçbir sayı 3'ün katı değil");



      //Kullanıcıdan taban ve üst isteyin sonuç(pow) olan sayı 100 den büyük ve eşit ise ekrana 100 den büyük değilse 100 den küçük yazsın(ternary if ile yapın)

  stdout.write("Lütfen taban olacak sayıyı giriniz: ");
  int taban = int.parse(stdin.readLineSync()!);
  stdout.write("Lütfen kuvvet olacak sayıyı giriniz: ");
  int kuvvet = int.parse(stdin.readLineSync()!);
  var sonuc = pow(taban, kuvvet);

  sonuc >= 100
      ? print("Sonuc: $sonuc 100 den büyük ya da eşit")
      : print("Sonuc: $sonuc 100 den küçük");

       //Kullanıcıdan sınır sayıyı isteyin.(1 den başlasın) Random iki sayı oluşturun. büyük sayıyı ekrana yazdırın.

       stdout.write("Lütfen sınır sayısını giriniz: ");
  int myNumber = int.parse(stdin.readLineSync()!);
  Random r = Random();
  int firstNumber = r.nextInt(myNumber) + 1;
  int secondNumber = r.nextInt(myNumber) + 1;
  int bigNumber = max(firstNumber, secondNumber);
  print(
    "Gelen $firstNumber ve $secondNumber sayılarından büyük olanı $bigNumber",
  );



        //Kullanıcıdan bir sınır isteyin ve bir adet isteyin (1 den başlasın) Random o adet sayı kadar bunların ortalamasını ekrana yazdırın.


         stdout.write("Lütfen sınır sayısını giriniz: ");
  int bestNumber = int.parse(stdin.readLineSync()!);
  stdout.write("Lütfen adet sayısını giriniz: ");
  int count = int.parse(stdin.readLineSync()!);
  Random r2 = Random();
  int toplam = 0;
  double ort = 0;
  for (int i = 1; i < count; i++) {
    int numb = r2.nextInt(bestNumber) + 1;
    print("$i.sayı : $numb");
    toplam += numb;
  }
  ort = toplam / count;
  print("Sayıların ortalaması $ort");

  */

  //Kullanıcıya önce adını soruyoruz : Bilal
  //Oyuna başlayalım Evet ise E hayır ise H ye basın
  //E ye bastı
  //Random olarak 2 tane 1 ile 6 arasında 6 dahil iki sayı üretilip toplanıcak.
  //Bir diğer kullanıcı adını soyadınız sorucaz : Hatice
  //Oyuna başlayalım Evet ise E hayır ise H ye basın
  //E ye bastı
  //Random olarak 2 tane 1 ile 6 arasında 6 dahil iki sayı üretilip toplanıcak.
  //Sonuc olarak büyük olan oyunu kazanıcak
  //Bilal 11 puan ile oyunu kazandı. Çünkü Hatice'nin puanı 9 puan
  //Bilal ve Hatice aynı puanı aldı Puan : 8 puan

  while (true) {
    //Sonsuz döngü olması
    Random r = Random(); //Random sınıfından değişken oluşturduk
    int sum1 = 0,
        sum2 = 0; //1. ve 2. oyuncunun toplamları tutsun iki değişken oluşturduk
    int zar1_1 = 0, zar1_2 = 0, zar2_1 = 0, zar2_2 = 0; //4 tane zar atılacağı için değişkenler
    stdout.write("1.Oyuncu Adınızı giriniz: "); //ismi istedik
    String? player1 = stdin.readLineSync(); //ismi aldık
    stdout.write(
      "Oyuna başlamak için E ye çıkış yapmak için herhangi bir tuşa basın ",
    ); //oyuncuya bilgi verdik
    String? selected = stdin.readLineSync(); //oyuncu seçimini yaptı
    if (selected == "E" || selected == "e") {
      //oyunu başlattıysa
      print("Zar 1 atılıyor..."); //ekrana bilgi
      zar1_1 =
          r.nextInt(6) +
          1; //zar 1 ile 6 dahil gelebileceği için random oluşturduk
      print("1.oyuncunun 1.zarı: $zar1_1"); //ekrana yazdırdık birinci atışı
      print("Zar 2 atılıyor..."); //ekrana bilgi
      zar1_2 =
          r.nextInt(6) +
          1; //zar 2 ile 6 dahil gelebileceği için random oluşturduk
      print("1.oyuncunun 2.zarı: $zar1_2"); //ekrana yazdırdık ikinci atışı
      sum1 = zar1_1 + zar1_2; //1.oyuncunun zarlarını topladık
    } else {
      //oynamak istemiyorsa çıkış yaptık.
      break;
    }
    print("2.oyuncuya geçiliyor.....");
    stdout.write("2.Oyuncu Adınızı giriniz: ");
    String? player2 = stdin.readLineSync();
    stdout.write(
      "Oyuna başlamak için E ye çıkış yapmak için herhangi bir tuşa basın ",
    );
    String? selected2 = stdin.readLineSync();
    if (selected2 == "E" || selected2 == "e") {
      print("Zar 1 atılıyor...");
      zar2_1 = r.nextInt(6) + 1;
      print("2.oyuncunun 1.zarı: $zar2_1");
      print("Zar 2 atılıyor...");
      zar2_2 = r.nextInt(6) + 1;
      print("2.oyuncunun 2.zarı: $zar2_2");
      sum2 = zar2_1 + zar2_2;
    } else {
      break;
    }

    print("Puanlar hesaplanıyor.....");

    if (sum1 > sum2) {
      //puan durumuna göre birinciyi seçtik.
      print(
        "Oyuncu 1: $player1 oyunu $sum1 puan ile kazandı. Not: $player2 nin puanı $sum2 dir",
      );
    } else if (sum2 > sum1) {
      print(
        "Oyuncu 1: $player2 oyunu $sum2 ile kazandı. Not: $player1 nin puanı $sum1 dir",
      );
    } else {
      print(
        "Oyuncu 1: $player2 oyunu $sum2 ve $player1 nin puanı $sum1 dir. bu durumda eşitlik vardır.",
      );
    }
  }
}
