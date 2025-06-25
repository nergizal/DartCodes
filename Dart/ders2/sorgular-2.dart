import 'dart:io';

void main(List<String> args) {
  /*
    Karar Alma Yapıları:

    -Belirlenen şartlara göre karar alan yapılardır.
    -Kararlar, şartın true veya false (boolean) olmasına göre alınır.
    -Koşullarımız gereken yerlerde kullanılır ( if-else, if-elseif-else, while)

    Karşılaştırma Operatörleri

    == : Eşit mi? (Eşittir)

    (A == B) => true ya da false

    != : Eşit değil mi? (Eşit değil)

    (A != B) true ya da false

    > : Büyüktür

    (A > B) => true ya da false

    < : Küçüktür

    (A < B) => true ya da false

    >= : Büyük eşit

    (A >= B) => true ya da false

    <= : Küçük eşit

    (A <= B) => true ya da false

    Mantıksal Operatörler:

    Mantıksal işlemleri bu operatörlerle yaparız.

    && : AND : Her iki koşulda sağlanıyorsa true olur diğer türlü false olur

    (A && B) => true ya da false

    A : true, B: true  sonuç true
    A: false, B: true sonuç false
    A: true, B: false sonuç false
    A: false, B: false sonuç false

    || : OR : iki koşuldan biri bile sağlanıyorsa true.

    (A || B) : true ya da false

    A : true, B: true  sonuç true
    A: false, B: true sonuç true
    A: true, B: false sonuç true
    A: false, B: false sonuç false

    ! : NOT : Var olan durumu tersine dönüştürür.

    (!A && B) => sonuc true ya da false dönecek

    A= false ise => !A = true

    Örnek:

    int a = 57;
    int b = 38;

    print(a > b) => sonuc: true;

    int a = 17;
    int b = 38;

    print(a > b) => sonuc: false;


    String name1 = "Bilal";
    String name2 = "Hatice";

    print(name1 == name2); => Sonuç false

    String name1 = "Bilal";
    String name2 = "Bilal";

    print(name1 == name2); => Sonuç true


    String name1 = "Bilal";
    String name2 = "bilal";

    print(name1 == name2); => Sonuç false

  bool stateOne = 12 > 5;//true

  bool stateTwo = 17 == 19;//false

  print(stateOne && stateTwo);//false


  bool stateOne = 12 > 5; //true

  bool stateTwo = 17 < 19; //true

  print(stateOne && stateTwo); //true


    bool stateOne = 12 > 5; //true

    bool stateTwo = 17 < 19; //true

    print(stateOne || stateTwo); //true


    bool stateOne = 12 > 5; //true

  bool stateTwo = "Bilal" == "bilal"; //false

  print(stateOne || stateTwo); //true

 

  bool stateOne = 12 > 5; //true

  bool stateTwo = "Bilal" == "bilal"; //false

  print(stateOne || stateTwo); //true
 */
  //Örnekler

  //Çözüm :
  /*
   stdout.write("Lütfen birinci sayıyı giriniz: ");

  String? numberOneText = stdin.readLineSync();

  double numberOne = double.parse(numberOneText!);

  stdout.write("Lütfen ikinci sayıyı giriniz: ");

  String? numberTwoText = stdin.readLineSync();

  double numberTwo = double.parse(numberTwoText!);

  bool result = numberOne > numberTwo;

  print(
    "Girmiş olduğunuz $numberOne sayısı ile $numberTwo sayısını karşılaştırdığımızda sonuç : $result gelmektedir",
  );
  */

  //--------------------------------------------------------------------
  //2)kullanıcıdan bir sayı isteyin sonra ikinci sayısı isteyin. birinci sayının 2 katının 5 fazlasını bulup ikinci sayı ile karşılaştırın

  //Lütfen işlem yapılacak sayıyı giriniz:
  //Lütfen karşılaştırılacak sayıyı girin :
  //birinci sayının 2 katının 5 fazlasını
  //karşılaştırma operatörü ile sonucu döndürecek
  //Çıktı girdiğiniz 17 sayısının 2 katının 5 fazlası 34 ile karşılaştırıldığında true
  //13:59 da görüşmek üzere

  /*
stdout.write("Lütfen işlem yapılmasını istediğiniz sayıyı girin: ");

  String? textOne = stdin.readLineSync();

  double numberOne = double.parse(textOne!);

  stdout.write("Lütfen karışlaştırma yapılacak sayıyı giriniz: ");

  String? textTwo = stdin.readLineSync();

  double numberTwo = double.parse(textTwo!);

  bool result = ((numberOne * 2 + 5) > numberTwo);

  print(
    "Girmiş olduğunuz $numberOne sayısının 2 katının beş fazlası ile girmiş olduğunu ikinci sayı olan $numberTwo ' un karşılaştırma sonucu $result",
  );

  if: Eğer anlamına gelir koşul sorgusu yapar
  if(koşul){

    kosul true yani doğru ise burası çalışır.

     int age = 38;

    if (age > 18) {
    //true
    print("Sen reşit bir insansın");
    }
  
  }

    int age = 16;

  if (age > 18) {
    //true
    print("Sen reşit bir insansın");
  } else {
    //false
    print("Sen reşit değilsin");
  }
  */

  //Kullanıcıdan yaşını isteyip kontrol sonrası ekrana evet ehliyet başvurusu yapabilirsiniz, ehliyet için daha erken yazan program.

  /*

  stdout.write("Merhaba, lütfen yaşınızı girer misiniz? ");
  String? myAgeTxt = stdin.readLineSync();

  int myAge = int.parse(myAgeTxt!);

  if (myAge >= 18) {
    print("Ehliyet başvurusu yapabilirsiniz :)");
  } else {
    print("Üzgünüm biraz daha büyümelisin :(");
  }

  */



  //1)Hangi sayı daha büyüktür oyununa hoşgeldiniz
  //Birinci sayıyı giriniz:
  //İkinci sayıyı giriniz
  //"Girdiğiniz 17 sayısı ile 15 sayısının sonucu true"

  /*
  Çözümü
 print("Hangi sayı büyüktür oyununa hoşgeldiniz");

  stdout.write("Birinci sayıyı giriniz: ");

  String? numberOneText = stdin.readLineSync();

  int numberOne = int.parse(numberOneText!);

  stdout.write("İkinci sayıyı giriniz: ");

  String? numberTwoText = stdin.readLineSync();

  int numberTwo = int.parse(numberTwoText!);

  if (numberOne > numberTwo) {
    print("$numberOne sayısı $numberTwo sayısından büyüktür");
  } else {
    print("$numberTwo sayısı $numberOne sayısından büyüktür");
  }

  //2)kullanıcıdan bir sayı isteyin sonra ikinci sayısı isteyin. birinci sayının 2 katının 5 fazlasını bulup ikinci sayı ile karşılaştırın

  //Lütfen işlem yapılacak sayıyı giriniz:
  //Lütfen karşılaştırılacak sayıyı girin :
  //birinci sayının 2 katının 5 fazlasını
  //karşılaştırma operatörü ile sonucu döndürecek
  //Çıktı girdiğiniz 17 sayısının 2 katının 5 fazlası 34 ile karşılaştırıldığında (büyüktür küçüktür)

  Çözüm: 

   print("Sisteme Hoşgeldiniz...");
  stdout.write("İşleme girecek sayıyı yazınız: ");
  int firstNumber = int.parse(stdin.readLineSync()!);
  int changeNumber = firstNumber * 2 + 5;
  stdout.write("Karşılaştırmaya girecek sayıyı yazınız: ");
  int secondNumber = int.parse(stdin.readLineSync()!);
  if (changeNumber > secondNumber) {
    print(
      "Girilen birinci sayının değişmiş hali olan $changeNumber ikinci girilen sayı olan $secondNumber ' dan büyüktür",
    );
  } else {
    print(
      "Girilen birinci sayının değişmiş hali olan $changeNumber  ikinci girilen sayı olan $secondNumber ' dan küçüktür",
    );
  }
  */

  //Örnekler
  //1)Belli bir kullanıcı adı olan sisteme kullanıcı ismini girecek sisteme giriş başarılı kabul edilmezse sisteme giremediniz kullanıcı adı hata desin.
  /*
  String adminName = "softito";

  stdout.write("Lütfen sistem yöneticisi kullanıcı adınızı yazın ");

  String? myUserName = stdin.readLineSync();

  if (myUserName == adminName) {
    print("Sisteme başarıyla giriş yaptınız...");
  } else {
    print("Hata! Kullanıcı adı eşleşmiyor...");
  }

 Sisteme girişte kullanıcı adı  ve şifre var. Kullanıcıdan bu iki veriyi alıcaz. doğru ise sisteme giriş başarılı değile bilgi hatası. 

 String userName = "Bilal";

  String pass = "123456";

  stdout.write("Lütfen kullanıcı adınızı giriniz: ");

  String? inputUserName = stdin.readLineSync();

  stdout.write("Lütfen şifrenizi giriniz: ");

  String? inputUserPass = stdin.readLineSync();

  if (userName == inputUserName && pass == inputUserPass) {
    print("Sisteme giriş başarılı");
  } else {
    print("Hata.. Bilgiler uyumlu değil");
  }

  //Kullanıcın girdği sayının çift mi tek mi olduğunu yazan program (Mod al)

  stdout.write("Lütfen bir sayı giriniz: ");

  int myNumber = int.parse(stdin.readLineSync()!);

  if (myNumber % 2 == 0) {
    print("Girdiğiniz $myNumber çift bir sayıdır");
  } else {
    print("Girdiğiniz $myNumber tek bir sayıdır");
  }

  //Bir sayının negatif mi pozitif mi olduğunu belirleyen program

  int numberOne = 0; //17, -55

  if (numberOne > 0) {
    print("$numberOne sayısı pozitif bir sayıdır. ");
  } else if (numberOne < 0) {
    print("$numberOne sayısı negatif bir sayıdır. ");
  } else {
    print("Girdiğiniz sayı olan $numberOne bir işareti yoktur");
  }

   //Kullanıcının girdiği sayının işareti belirleyen program

  stdout.write("Lütfen bir sayı giriniz: ");

  int inputNumber = int.parse(stdin.readLineSync()!);

  if (inputNumber == 0) {
    print("Girdğiniz $inputNumber sayısının işareti yoktur..");
  } else if (inputNumber > 0) {
    print("Girdiğiniz $inputNumber sayısının işareti pozitiftir");
  } else {
    print("Girdiğiniz $inputNumber sayısının işareti negatiftir");
  }


   //Kullanıcı iki sayı girecek listeden bir işlem seçecek ve sonuçta işleme göre ekrana sonuç yazıcak
  stdout.write("Lütfen birinci sayıyı giriniz: ");
  double a = double.parse(stdin.readLineSync()!);
  stdout.write("Lütfen ikinci sayıyı giriniz: ");
  double b = double.parse(stdin.readLineSync()!);
  print(
    "Toplama için : 1 \n Çıkarma için : 2 \n Çarpma için : 3 \n Bölme için : 4 \n Mod Alma için : 5 \n tuşuna basınız ",
  );
  String? secim = stdin.readLineSync();
  if (secim == "1") {
    print("$a + $b = ${a + b}");
  } else if (secim == "2") {
    print("$a - $b = ${a - b}");
  } else if (secim == "3") {
    print("$a x $b = ${a * b}");
  } else if (secim == "4") {
    print("$a : $b = ${a / b}");
  } else {
    print("$a % $b = ${a % b}");
  }


   //Kullanıcı iki sayı girecek listeden bir işlem seçecek ve sonuçta işleme göre ekrana sonuç yazıcak ( yanlış bir tuşa basma olayını da kontrol edin)

  stdout.write("Lütfen birinci sayıyı giriniz: ");
  double a = double.parse(stdin.readLineSync()!);
  stdout.write("Lütfen ikinci sayıyı giriniz: ");
  double b = double.parse(stdin.readLineSync()!);
  print(
    "Toplama için : 1 \n Çıkarma için : 2 \n Çarpma için : 3 \n Bölme için : 4 \n Mod Alma için : 5 \n tuşuna basınız ",
  );
  String? secim = stdin.readLineSync();
  if (secim == "1") {
    print("$a + $b = ${a + b}");
  } else if (secim == "2") {
    print("$a - $b = ${a - b}");
  } else if (secim == "3") {
    print("$a x $b = ${a * b}");
  } else if (secim == "4") {
    print("$a : $b = ${a / b}");
  } else if (secim == "5") {
    print("$a % $b = ${a % b}");
  } else {
    print("Yanlış bir seçim yaptınız programdan çıkılıyor...");
  }
  */

  //Kullanıcıdan bir sayı alalım çift mi tek mi kontrol edelim ( boş olma durumunu kontrol et)

  //Basic:
  //String in başlangıç değeri "" kullanılarak kontrol yapılabilir.
  //int başlangıç değeri 0 dır.

  stdout.write("Bir sayı giriniz: ");

  String? gelenSayiText = stdin.readLineSync();

  if (gelenSayiText == "") {
    print("Lütfen geçerli bir sayı giriniz");
  } else {
    int gelenSayi = int.parse(gelenSayiText!);
    if (gelenSayi % 2 == 0) {
      print("Girilen sayı çift");
    } else {
      print("Girilen sayı tektir");
    }
  }
}
