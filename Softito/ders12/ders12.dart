import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  /*
    Nesne Yönelimli Programlama Giriş
    -Flutter kısmında başarılı olmak istiyorsanız üç ana madde kavramları vardır.
    --Bunlar Nesne yönelimli programlama kavramları
    --Koleksiyonları bilmelisiniz
    --Fonksiyonları bilmelisiniz
    -Bu bölüm başka programlama dillerinde vardır. 
    -Hayatta herşey bir nesnedir. Bunu günlük hayattaki olaylara yansıtırsak daha anlamlı hale gelir.

     int sayi = 5;
     String isim = "Bilal";
     Bunlar bana yetmeyecek ya da kendi veri türümüzü oluşturmak isteyeceğim zamanlar olacak

      List<int> liste = [];
     Mesela bir liste isteyeceğim kullanıcılarımdan ama bu listenin içerisini dart ın belirlediği kurallarda değilde kendi kurallarım ve veri türüm ile doldurmalarını isteyebilirim. 

     Bunu sağlayabileceğimiz kavram sınıf kavramıdır. Mesela List dediğimiz şey bir sınıf kavramıdır ya da Map bir sınıftır. İşte biz kendi sınıflarımızı oluşturarak o sınıfa ait değişkenler metodlar tanımlayabiliriz.

     İşte bu yüzden kendi kurallarımız yani kendi sistemimizi kurmak için sınıf oluşturmalıyız. 
     Dart dilinde sınıf şu şekilde oluşturulur:
     -Birinci olarak sınıf oluşumunu main dışında yapıcaz.
     -başına class yazıcaz yanına class ın ismini yazıcaz

     class Kisi{
     }

     -Eğer sınıf oluşturuyorsanız ilk harfi büyük olmalı. Bizim oluşturduğumuz Kisi artık bir veri türüdür.
     -Sınıfların veri türü olduğuna en güzel örnek sürekli kullandığımız Random sınıfıdır. Random bir class dır ve onu kullanarak rastgele sayıo oluşturabiliriz. Sınıfı çağırırken aynen değişken gibi kullanırız. ÇÜNKÜ sınıflar bir VERİ TÜRÜDÜR.

     int sayi;
     Random r = Random();
     Kisi ahmet;

     -Bizler sınıflarımız da o sınıfa özgü değişkenler oluşturabiliriz.

     class Ogrenci {
      int ogrNo; //Sıkıntı yok hatayı açıklıcam
      String ogrAd;
      bool aktifMi;
    }
    bu bir taslaktır. Bu sınıfımıza ait lazım olan değişkenleri oluşturarak planımızı yaptık. 

    Bu uyarıların nedeni (altlarını kırmızı ile çiziyor. null gelme ihtimali var diyor) ? koyarak bu sorunu halledebiliriz. 

    class Ogrenci {
      int? ogrNo; 
      String? ogrAd;
      bool? aktifMi;
    }
    Eğer soru işareti koyarak sorunu halletmek istemiyorsak varsayılan değerleri atayarak da buy hatadan kurtulabiliriz.

    class Ogrenci {
      int ogrNo = 1; 
      String ogrAd = "";
      bool? aktifMi = false;
    }

    Öğrencinin özelliklerini tanımladıktan sonra öğrencinin yapabileceği işlevleri(metod) de sınıflar içerisinde tanımlayabiliriz.

    class Ogrenci {
      int ogrNo = 1;
      String ogrAd = "";
      bool aktifMi = false;

      void dersCalis() {
        print("Öğrenci ders çalışıyor");
      }

      Benim bu sınıfı kullanabilmem için bu sınıftan bir örnek oluşturmam gerekiyor. Buna da nesne oluşturmak deniyor.
      Biz örnek oluşturmayı aslında daha önce öğrendik. Değişken oluşturmakta aslında bir örnek oluşturmaktır. int sınıfından sayi adında bir örnek oluşturuyoruz. Bunu defalarca yaptık. Şimdi de kendi sınıfımızdan yani kendimizin oluşturduğu veri türümüzden örnek nasıl oluşturulur onu görelim.

      int sayi;//demekten bir farkı yok

      Sınıflarımızdan örnek yani nesne oluştururken

      Sınıf_adi nesne_adi = Sınıf_adi();

      Ogrenci bilal = Ogrenci();


      Ogrenci bilal = Ogrenci();//Her örnek oluşturduğumda bellekte bir alan oluşturuyorum ve bu alanın içerisini doldurabiliyorum. Bu nesneye özgü bir alandır
      Ogrenci hasan = Ogrenci();

      Peki biz bu sınıftaki değişkenlere nasıl erişiriz? arkadaşlar nokta operatörü sınıfın özelliklerine erişmek için kullanılır.

      nesne_adi.degisken_adi; şeklinde ulaşabilirsiniz.

      nesnelerin değişkenlerine değer atayabilmek için

       nesne_adi.degisken_adi = deger; diyoruz


        bilal.ogrAd = "Bilal Karademir";
        bilal.ogrNo = 1402;
        bilal.aktifMi = true;

        **bilal yazdığnızda yanında Ogrenci sınıfına ait olduğunu yani artık Ogrenci adında da bir veri türü olduğunu dart bize gösteriyor. Artık kendi veri türümüz var.

        Normalde değer vermesekte eğer başlangıçta değer verildiyse varsayılan değeri oluşturur.

        Örnek olarak anlatmak istersek

        Kardeşler Apartmanı bir sınıf.
        Kardeşler apartmanındaki her daire bir nesne
        Dairenin içerisindeki insanlar hakkındaki bilgiler de değişken
        kisi_sayisi
        aktifMi
        burda oturan insanlar (List)

        KardeslerApartman daire2 = KardeslerApartman();
        daire2.kisiSayi = 4
        daire2.isAktif = true;
        daire2.kisiler = ["Ahmet","Sezen","Bilal","Ayşe"];

        Ogrenci bilal = Ogrenci();
        bilal.ogrAd = "Bilal Karademir";
        bilal.ogrNo = 1402;
        bilal.aktifMi = true;

        Ogrenci sezen = Ogrenci();
        sezen.ogrNo = 1536;

        Her oluşturulan nesne aynı sınıfa ait farklı yapılardır. Ram de ayrı ayrı adresler ve yerleri vardır.

        Kardeşler apartmanı daire : 2 ile Kardeşler apartmanı daire : 5 farklı adreslerdir. Her dairenin kendine özgü farklı özellikleri vardır.

        Biz o sınıfa ait metodlara da ulaşabiliriz. 

         bilal.dersCalis();

         bu çağrış sonucunda metod çalışacaktır.



    //Hayvalar adında bir sınıf oluşturun bu sınıfın bir adı, ayaksayisi, ucuyorMu, yemekYe metod olsun. bir hayvan nesne oluşturun ve özelliklerini doldurun ve metodu çağırın


    Ogrenci bilal = Ogrenci();
  bilal.ogrAd = "Bilal Karademir";
  bilal.ogrNo = 1402;
  bilal.aktifMi = true;

  bilal.dersCalis(); 
}
class Ogrenci {
  int ogrNo = 1;
  String ogrAd = "";
  bool aktifMi = false;

  void dersCalis() {
    print("Öğrenci ders çalışıyor");
  }


  Hayvan kedi = Hayvan();
  kedi.ayakSayisi = 4;
  kedi.ad = "Minnoş";
  kedi.ucuyorMu = false;

  kedi.yemekYe();

  Hayvan tavuk = Hayvan();
  tavuk.ayakSayisi = 2;
  tavuk.ucuyorMu = true;
  tavuk.ad = "Kınalı";

  tavuk.yemekYe();

  class Hayvan {
  int ayakSayisi = 4;
  String ad = "Pamuk";
  bool ucuyorMu = false;

  void yemekYe() {
    print("Yemek yiyiyor");
  }
}

    dynamic ahmet = Ogrenci(); // özelliklere ulaşılamaz
    eğer ulaşmak istiyorsanız ve başında sınıfın adı ile çağırmak istemiyorsanız var kullanmalısınız


     //nesne yani örnek Daire 7
      var ahmet = Ogrenci();
      ahmet.ogrAd = "Ahmet";
      ahmet.aktifMi = true;
      ahmet.ogrNo = 007;

      ahmet.dersCalis();

      print(
      "Kullanıcı bilgileri adı : ${ahmet.ogrAd}\nnumarası: ${ahmet.ogrNo}\naktif mi ${ahmet.aktifMi}",
      );

      //sınıflar main dışında tanımlanır
      //sınıflar büyük harf ile başlar
      //sınıf tanımlanırken isimden sonra () kullanılmaz. bu bir sınıftır fonksiyon değildir.
      //parantez sonuna noktalı virgül konmaz
      //sınıflarda değişken tanımlarken ilk değer verebilirsiniz ya da değişken başına ? koyabilirsiniz


      Constructor (kurucu-yapıcı metodlar): Kendisi ilk çağrılan metottur.Nesne oluşturulduğu an çalışır. 
      Kurucu metodlar sınıf ile aynı ismi taşır. geri dönüş tipi yoktur.
      Çağrılmaya ihtiyaçları yoktur


    Araba a1 = Araba();//nesne oluşur oluşmaz kurucu metod çalıştı.

    class Araba {
        Araba() {
            print("Ben kurucu metottan geldim");
        }

         Araba a1 = Araba();
  a1.marka = "Honda";
  a1.modelYili = 2025;
  a1.fiyat = 2560000;
  a1.otomatikMi = true;
  a1.bilgileriYazdir();
  a1.marka = "Reno";
  a1.bilgileriYazdir();
}
class Araba {
  String? marka;
  int? modelYili;
  double? fiyat;
  bool? otomatikMi;

  Araba() {
    print("Ben kurucu metottan geldim");
  }

  void bilgileriYazdir() {
    print(
      "Markası: $marka, model yılı: $modelYili, fiyatı: $fiyat, otomatik vites: $otomatikMi",
    );
  }

  Biz niye kurucu metodlara ihtiyaç duyarız? Çünkü bir sınıfın bir çok değişkeni olabilir. Bunları tek tek girmek yerine kurucu metottan alabiliriz. bu sayede . operatörünü sadece çağırma işleminde kullanabiliriz.
  Zorunlu parametreler oluşturarak kullanıcının o bilgileri girmesini kontrol edebileceğiz yani null hatasını en aza indireceğiz.


  Örnek:

  Çağırma:(Main)
    Sirket apple = Sirket(14569, 2001, "Apple", 2500, "Los angels - ABD");
  apple.bilgileriGoster();
  Sirket google = Sirket(156987, 1996, "Google", 17500, "Pekin - Çin");
  google.bilgileriGoster();

  Oluşturma İşlemleri

  class Sirket {
  int? sirketVergiNo;
  int? kurulusYili;
  String? adi;
  String? adres;
  int? calisanSayisi;
  //Kurucu Metod - parametreli bir kurucu metod
  Sirket(
    int companyNo,//bunu aldı
    int beginYear,
    String companyName,
    int personNumber,
    String adress,
  ) {
    sirketVergiNo = companyNo;//aldığı veriyi sınıf içinde uygun değişkene değer olarak verdi
    kurulusYili = beginYear;
    adi = companyName;
    calisanSayisi = personNumber;
    adres = adress;
  }
  void bilgileriGoster() {
    print(
      "Şirket adı: $adi, kuruluş yılı: $kurulusYili, vergi no: $sirketVergiNo, çalışan sayısı: $calisanSayisi, adresi: $adres",
    );
  }

  Örnek:

   Banka garantiBankasi = Banka(
    "Garanti Bankası",
    1992,
    6450,
    "Levent-Beşiktaş",
    "4441444",
    1000000,
    160,
    true,
  );
  garantiBankasi.bilgeleriGoster();

  class Banka {
  //Sınıf değişkenleri şuan boş
  String? ad;
  int? kurulusYili;
  int? calisanSayisi;
  String? genelMerkezAdres;
  String? iletisimTel;
  double? yillikKar;
  int? subesiSayisi;
  bool? aktifMi;
  //Bu değişkenleri doldurmazsak bilgileri çağırırken null alıcaz. Bu bilgileri kurucu metotta doldurmalıyız. Bunu da kurucu metodun parametresinden gelen verileri bu değişkenlere değer olarak atayarak yapıcaz
  Banka(
    String name,int beginYear,int personCount,String generalOrijinAdress,String contactPhoneNumber,double yearMoney,int branchCount,bool isActive,
  ) {
    ad = name;
    kurulusYili = beginYear;
    calisanSayisi = personCount;
    genelMerkezAdres = generalOrijinAdress;
    iletisimTel = contactPhoneNumber;
    yillikKar = yearMoney;
    subesiSayisi = branchCount;
    aktifMi = isActive;
  } //Kurucu metod alan sonu

  void bilgeleriGoster() {
    print(
      "Banka Adı: $ad, Kuruluş yılı: $kurulusYili, calişan sayısı: $calisanSayisi, Merkez Adres: $genelMerkezAdres, iletişim numarası: $iletisimTel, Yıllık karı: $yillikKar, şube sayısı: $subesiSayisi, aktif mi: $aktifMi",
    );
  }
}


  //Bir User adlı bir sınıf oluşturalım. ad-soyad, şifre, memleket, cinsiyet, okul
  //sonra bu aldığımız verileri ekleyelim sonra yazdıralım. Sonsuz döngü olsun.


  void bilgileriAl() {
  while (true) {
    stdout.write("Lütfen kimlik numaranızı giriniz: ");
    int kimlikNo = int.parse(stdin.readLineSync()!);
    stdout.write("Lütfen adınızı soyadınız giriniz: ");
    String? benimAdSoyad = stdin.readLineSync();
    stdout.write("Lütfen şifrenizi giriniz: ");
    String? benimSifrem = stdin.readLineSync();
    stdout.write("Lütfen memleketinizi giriniz: ");
    String? benimMemleket = stdin.readLineSync();
    stdout.write("Lütfen cinsiyetinizi giriniz: ");
    String? benimCinsiyet = stdin.readLineSync();
    stdout.write("Lütfen okulunuzu giriniz: ");
    String? benimokul = stdin.readLineSync();
    User user = User(
      //kullanıcının girdikleri
      kimlikNo,
      benimAdSoyad!,
      benimSifrem!,
      benimMemleket!,
      benimCinsiyet!,
      benimokul!,
    );
    user.bilgileriGoster();
  } //döngü sonu
}

class User {
  //Sınıf değişkenleri
  int? userId;
  String? name;
  String? pass;
  String? city;
  String? gener;
  String? highSchool;
  User(
    //Kurucu metod parametreleri
    int id,
    String adSoyad,
    String sifre,
    String memleket,
    String cinsiyet,
    String okul,
  ) {
    userId = id;
    name = adSoyad;
    pass = sifre;
    city = memleket;
    gener = cinsiyet;
    highSchool = okul;
  }
  void bilgileriGoster() {
    print(
      "Kimlik No: $userId, Adı Soyad: $name, şifresi: $pass, Memleketi: $city, cinsiyet: $gener, okulu: $highSchool ",
    );
  }
}
  bilgileriAl();

  

  //Öğrenci kayıt sistemi yapıcaz. Birden fazla öğrenci eklenecek ve eklenenleri göstericez.

  ogrenciEkle();

  void ogrenciEkle() {
  List<Ogrenci> tumOgrenciler = [];
  while (true) {
    print("**** Marmara Üniversitesi Kayıt Sistemine Hoşgeldiniz ***");
    print(
      "Öğrenci eklemek için 1' e çıkış yapmak için herhangi bir tuşa basınız: ",
    );
    String? secim = stdin.readLineSync();
    if (secim == "1") {
      stdout.write("Lütfen adınızı soyadınızı giriniz: ");
      String? adSoyad = stdin.readLineSync();
      stdout.write("Lütfen kayıt olmak istediğiniz bölümü giriniz: ");
      String? bolum = stdin.readLineSync();
      stdout.write("Lütfen telefon numaranızı giriniz: ");
      String? tel = stdin.readLineSync();
      stdout.write("Lütfen yaşadığınız şehri giriniz: ");
      String? sehir = stdin.readLineSync();
      Ogrenci ogrenci = Ogrenci(adSoyad!, bolum!, tel!, sehir!);
      tumOgrenciler.add(ogrenci);
    } else {
      break;
    }
  }
  for(Ogrenci o in tumOgrenciler) {
    //print(o.adSoyad);
    o.bilgileriGoster();
  }
}

class Ogrenci {
  String adSoyad = "";
  String bolum = "";
  String tel = "";
  String sehir = "";
  
  Ogrenci(String name, String departman, String phoneNumber, String city) {
    adSoyad = name;
    bolum = departman;
    tel = phoneNumber;
    sehir = city;
  }

  void bilgileriGoster() {
    print(
      "Adı-Soyad: $adSoyad, Bölümü: $bolum, tel no: $tel, yaşadığı şehir: $sehir",
    );
  }
}

  this anahtar kelimesi : this bulunduğu sınıftaki değişkeni ifade eder. this kullanmak o sınıftaki değişkeni belli etmekdir.
  o yüzden eğer sınıf değişkeni ile kurucu metoda gelen değişkeni aynı isim ile kullanmak istiyorsan sınıf = parametre doldurmak zorunda olduğunu için sınıfın değişkenini this ile çağırmanız gerekir.

  this.sınıf_degiskeni = parametre_degiskeni
  this.name = name;

 
  Araba a = Araba(2022, "Honda", true);
  a.yasHesapla();

  class Araba {
  int? modelYili;
  String? marka;
  bool? otomatikMi;

  Araba(int modelYili, String marka, bool otomatikMi) {
    this.modelYili = modelYili;
    this.marka = marka;
    this.otomatikMi = otomatikMi;
  }

  void yasHesapla() {
    print("Arabanın yaşı : ${DateTime.now().year - modelYili!}");
  }
}

//this kullanım örneği:




  urunEkle();

  void urunEkle() {
  List<Urun> urunler = [];
  while (true) {
    print("**** Bilal Stok Sistemi *****");
    stdout.write(
      "Ürün eklemek için 1'e çıkış için herhangi bir tuşa basınız: ",
    );
    String? secim = stdin.readLineSync();
    if (secim == "1") {
      stdout.write("Lütfen ürün adını giriniz: ");
      String? name = stdin.readLineSync();
      stdout.write("Lütfen ürün adetini giriniz: ");
      int count = int.parse(stdin.readLineSync()!);
      stdout.write("Lütfen ürün fiyatını giriniz: ");
      double price = double.parse(stdin.readLineSync()!);
      Urun urun = Urun(name!, count, price);
      urunler.add(urun);
    } else {
      break;
    }
  } //While bitiş
  for (Urun ur in urunler) {
    ur.urunListele();
  }
}

class Urun {
  String name = "";
  int count = 0;
  double price = 0;

  Urun(String name, int count, double price) {
    this.name = name;
    this.count = count;
    this.price = price;
  }
  void urunListele() {
    print("Ürün adı : $name, ürün adet: $count, urun fiyat $price");
  }
}  


//this kısa kullanım örneği:


  urunEkle();


void urunEkle() {
  List<Urun> urunler = [];
  while (true) {
    print("**** Bilal Stok Sistemi *****");
    stdout.write(
      "Ürün eklemek için 1'e çıkış için herhangi bir tuşa basınız: ",
    );
    String? secim = stdin.readLineSync();
    if (secim == "1") {
      stdout.write("Lütfen ürün adını giriniz: ");
      String? name = stdin.readLineSync();
      stdout.write("Lütfen ürün adetini giriniz: ");
      int count = int.parse(stdin.readLineSync()!);
      stdout.write("Lütfen ürün fiyatını giriniz: ");
      double price = double.parse(stdin.readLineSync()!);
      Urun urun = Urun(name!, count, price);
      urunler.add(urun);
    } else {
      break;
    }
  } //While bitiş
  for (Urun ur in urunler) {
    ur.urunListele();
  }
}
class Urun {
  String name = "";
  int count = 0;
  double price = 0;
  //this kısa yol
  //Urun(name!, count, price)
  Urun(this.name, this.count, this.price);//Flutter kullanımı
  void urunListele() {
    print("Ürün adı : $name, ürün adet: $count, urun fiyat $price");
  }
}

isimlendirilmiş kurucu metod:
Eğer siz kurucu metotta istenen tüm bilgilerin hepsini almak istemiyorsunuz. Yani bir kurucu metotta hepsini alıp başka bir tanesinde sadece iki veriyi almak istiyorsanız. 


Örnek1: 

  Araba a1 = Araba.modelYiliOlmayanKurucuMetot("Reno", true);
  a1.bilgileriGetir();
  Araba a2 = Araba.vitesTuruOlmadanKurucMetot(2022, "Toyota");
  Araba a3 = Araba.markasizKurucuMetot(2024, true);
  //Ürünü mobile gönder Urun(name, fiyat, )
  //Ürünü stok yaz Urun(urun, fiyat,stokduru: false)

class Araba {
  int? modelYili;
  String? marka;
  bool? otomatikMi;

  Araba(this.modelYili, this.marka, this.otomatikMi);
  Araba.modelYiliOlmayanKurucuMetot(this.marka, this.otomatikMi);
  Araba.markasizKurucuMetot(this.modelYili, this.otomatikMi);
  Araba.vitesTuruOlmadanKurucMetot(this.modelYili, this.marka);

  void bilgileriGetir() {
    print(
      "Model yılı : $modelYili, markası: $marka, vitesi otomatik mi: $otomatikMi",
    );
  }
}

Örnek: 
//Benim bir şirketim var. Benim bir yazılımcım var. şirketin adı. şirketin yılı. gelir. borcu. calisanSayisi, vergiNo, adresi

//Muhasebe departmanı: Şirketin mali tablosunu ayarlayan
//Reklam departmanı Şirketin reklamını yapan bir departman


stdout.write("Lütfen şirket adını giriniz: ");
  String? name = stdin.readLineSync();
  stdout.write("Lütfen şirket kuruluş tarihi giriniz: ");
  int? beginYear = int.parse(stdin.readLineSync()!);
  stdout.write("Lütfen şirket adresini giriniz: ");
  String? adress = stdin.readLineSync();
  stdout.write("Lütfen şirket çalışan sayısı giriniz: ");
  int? personCount = int.parse(stdin.readLineSync()!);
  stdout.write("Lütfen şirket gelirini giriniz: ");
  double? revenue = double.parse(stdin.readLineSync()!);
  stdout.write("Lütfen borcunu giriniz: ");
  double? debt = double.parse(stdin.readLineSync()!);
  stdout.write("Lütfen vergi numarasını giriniz: ");
  int? taxNumber = int.parse(stdin.readLineSync()!);
  Sirket sirketMuhasebe = Sirket.muhasebe(personCount,revenue,debt,
  taxNumber,);
  Sirket sirketReklam = Sirket.reklam(name!,beginYear,adress!,revenue,
  personCount,);
  Sirket patron = Sirket(name,beginYear,adress,personCount,revenue,debt,taxNumber,);
  print("***** Muhasebe Bilgileri ******");
  sirketMuhasebe.muhasebeBilgileriniGoster();
  print("***** Reklam Bilgileri ******");
  sirketReklam.reklamBilgileriniGoster();
  print("***** Patron Bilgileri ******");
  patron.patronRapor();


  class Sirket {
  String name = "";
  int beginYear = 0;
  String adress = "";
  int personCount = 0;
  double revenue = 0;
  double debt = 0;
  int taxNumber = 0;
  //Şirketin tüm bilgileri için
  Sirket(
    this.name,
    this.beginYear,
    this.adress,
    this.personCount,
    this.revenue,
    this.debt,
    this.taxNumber,
  );
  //Muhasebe departmanı için gerekli bilgilerin olduğu
  Sirket.muhasebe(this.personCount, this.revenue, this.debt, this.taxNumber);
  //Reklam departmanı için gerekiyor
  Sirket.reklam(
    this.name,
    this.beginYear,
    this.adress,
    this.revenue,
    this.personCount,
  );
  void muhasebeBilgileriniGoster() {
    print(
      "Şirketimizin vergi numarası: $taxNumber. Şirketimizin yıllık geliri $revenue. Şirketimizin yıllık borcu $debt. Bu durum şirketin kazancı : ${revenue - debt}. Şirketimizde $personCount sayıda işçi çalışmaktadır. ",
    );
  }
  void reklamBilgileriniGoster() {
    print(
      "$name olarak $beginYear dan beri sizlere $adress de hizmet vermektedir. $personCount kadar çalışanımızla ülke ekonomisine $revenue gelirimizle katkı sağlıyoruz.",
    );
  }
  void patronRapor() {
    print(
      "$name\n$beginYear\n$debt\n$adress\n$personCount\n$revenue\n$taxNumber",
    );
  }
}

  Eğer kurucu metottaki parametreler isimlendirilmiş olsun istiyorsan {} kullanılır. Eğer isimlendirilmiş parametre yaparsanız artık parametreler zorunlu hala gelir.

  Örnek:
  Araba a1 = Araba(marka: "Toyota", modelYili: 2024, otomatikMi: true, model: "Corolla");
  a1.bilgileriGoster();

  class Araba {
  int? modelYili;
  String? marka;
  String? model;
  bool? otomatikMi;

  Araba({this.marka, this.model, this.modelYili, this.otomatikMi});

  void bilgileriGoster() {
    print(
      "Marka: $marka\nModel: $model\nyil: $modelYili\notomatik mi: $otomatikMi",
    );
  }
}

Örnek: isimlendirilmişte eğer parametre eksik girerseniz hata vermez çalıştığında null döndürür

Araba a1 = Araba(marka: "Toyota", modelYili: 2024, otomatikMi: true);
  a1.bilgileriGoster();//model null döner

class Araba {
  int? modelYili;
  String? marka;
  String? model;
  bool? otomatikMi;

  Araba({this.marka, this.model, this.modelYili, this.otomatikMi});

  void bilgileriGoster() {
    print(
      "Marka: $marka\nModel: $model\nyil: $modelYili\notomatik mi: $otomatikMi",
    );
  }
}

required: Zorunlu parametre demektir. Bunu başına koyarsak o parametre girilmek zorundadır. İsimledirilmiş parametreli kurucu metotta parametre zorunlu olsun istiyorsan yazılır. 

Araba a1 = Araba(
    marka: "Toyota",
    modelYili: 2024,
    otomatikMi: true,
    model: "Corolla",
   
  );
  a1.bilgileriGoster(); //model null döner
}
class Araba {
  int? modelYili;
  String? marka;
  String? model;
  bool? otomatikMi;

  Araba({required this.marka,required this.model,required this.modelYili, required this.otomatikMi});

  void bilgileriGoster() {
    print(
      "Marka: $marka\nModel: $model\nyil: $modelYili\notomatik mi: $otomatikMi",
    );
  }
}
//factory : bir kurucu türüdür. faktory kurucusu diye bir türümüz var. Aslında kurucu metotlar return eden yani geriye değer döndüren birer fonksiyondur. Peki ben kurucu metod bir değer return etsin istersem ne yapıcam. İşte bunun için faktory kurucu metod vardır.
  //factory kurucu metodlarda this in kısa yolu kullanılamıyor

 Ogrenci bilal = Ogrenci.factoryKurucu(-15, "");
  print(bilal.isim);
}

class Ogrenci {
  int id = 0;
  String isim = "";

  Ogrenci(this.id, this.isim) {
    print("Var sayılan parametreli kurucu çalıştı");
  }
  Ogrenci.idSiz(this.isim) {
    print("id olmayan kurucu metod çalıştı");
  }

  factory Ogrenci.factoryKurucu(int id, String isim) {
    if (id > 0 && isim != "") {
      return Ogrenci(id, isim);
    } else {
      return Ogrenci(0, "belirsiz");
    }
  }
*/
  


}

//Ödev: Yazılım bir sınıf. Egitmen sınıfı. Dersler sınıf. Ogrenciler sınıfı. bu sınıfların değişkenlerini oluşturun.
//Yazılım sınıfının değişkenleri ogrenciSayisi, Bina numarası, eğitmenler(string), ogrenciler(string), dersler(string), 
