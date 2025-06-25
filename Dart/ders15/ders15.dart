import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  /*
  Kalıtımın amacı kod tekrarını engellemek 
  Daha düzenli ve kullanışlı kod yazmak
  polimorfizm yani çok biçimliliği sağlamak 

  Peki biz kalıtım kullanacağımızı nasıl anlıyacağız? Eğer birden fazla sını aynı depğişkenleri ve aynı metodları kullanma gereği duyuyorsa bir ana sınıf oluşturup ondan alt sınıflar oluşturmanız gerektiğini anlayıp kalıtım kullanmalısın.

  Polimorfizm : çok biçimlilik anlamına gelir. Kalıtımın alt başlığıdır. Bir ana sınıfa ait alt sınıfları instance yani nesne oluştururken oluşacak olan nesneyi ana sınıftan tanımlayıp oluşturma işlemini alt sınıflardan yapabilirsiniz:

  User user4 = AdminUser();
  User user5 = AdminUser();
  User user6 = SadeceOkuyabilenNormalUser(); //upcasting cevrim

  Başka bir örnek vermek gerekirse:

  //işte buna polimorfizm denir çok biçimlilik. Farklı veri türlerini tek bir veri türü altından toplayıp kullanabilmek
  List<User> tumUserlar = [];
  tumUserlar.add(user1);
  tumUserlar.add(user2);
  tumUserlar.add(user3);

  Eğer bir alt sınıf üst sınıfa ait olan metodu üst sınıftan bir eleman parametresi istendiğinde o metoda dahil olup kendi metodunu gösterebilmesi yani o metodu kendine göre biçimlendirebilmesine polimorfizm çok biçimlilik denir.

  Örnek:

  test(user1);
  test(user2);
  test(user4);

  void test(User kullanici) {
  kullanici.girisYap();//çok biçimliklik(polimorfizm) deniyor

  Yukarıdaki örnekte her user girisYap metodunu kendine göre override yani ezdi. test metodu User türünden bir parametre istediğinde tüm userlar bu sınıftan kalıtım yani miras aldığı için parametre olarak gönderilebildi ama giriş yapı çağırdığımızda kendine göre sonuç verdi yani çok biçimlilik gösterdi.


  ---------------- GENEL TEKRAR -------------------------
  Kalıtım: Miras almak anlamına gelir. OOP nin en önemli noktalarından biridir. Bunu anlamak için Sınıf kavramını çok iyi bilmek gerekir:

  sınıf değişkenleri 
  sınıf metodları
  sınıf tanımlama

  Kalıtım niye var : Kalıtım OOP nin temeli olan çok kod yazma kod tekrarı yapma ve okunaklı kod yaz prensipleri gereğince kullanılır. 

  Kalıtıma ne zaman ihtiyaç duyarız: Eğer birden fazla sınıf aynı değişkenleri kulanıyorsa, aynı metodlara ihtiyaç duyuyorsa burda kod tekrar yapmak yerine bir ana sınıf oluşturursunuz ve alt sınıfları bu sınıfta miraz aldırırsınız.

  Miras alma işlemi nasıl yapılır:
  class alt_sinif_adi extends ust_sinif_adi {}
  şeklinde yapılır.

  Kalıtım yapınca neleri yapabiliyoruz: Kalıtım aldığın sınıftaki tüm değişken ve metotlara ulaşabilirsin kendi sınıfında tanımlamış olmamana rağmen. metodları ya değişkenleri kendimize göre biçimlendirebiliriz (polimorfizm) eğer değişken ise bildiğin değer atayarak, metodu ise override yaparak ezeriz.

  Override nedir: ezmek anlamına gelir. Eğer üst sınıftaki bir metodu değiştirmek istiyorsanız metodun başına @override özelliği getirmek zorundasın. bunu senin yazmana gerek yok. eğer o sınıf üst sınıftan miras aldıysa metodun ilk iki harfini yaz çıkanı seç otomatik gelir:

   @override
  void girisYap() {
    // TODO: implement girisYap
    super.girisYap();
  }

  Burada içini temizleyerek bu metodu o sınıfa özel işlevsel hale getirebiliriz.


 @override
  void girisYap() {
    print("Normal User giriş yaptı");
  }

  Polimorfizm: Çok biçimlilik anlımına gelir. Bu kavramın oluşabilmesi için Kalıtım almış sınıf olması gerekir. Bunu açıklamak gerekirse. üst sınıftan bir nesne alan metotta alt sınıflarında parametre olarak alınabilip metod çağrıldığında kendine göre o metodu çağırmasıdır.

void test(User kullanici) {
  kullanici.girisYap(); //çok biçimliklik(polimorfizm) deniyor
}

Yukarıda örnekde admin normal ya da sadece hepsi user olduğu için paramatere olarak oraya girebilecek ama girisYap metodunu hepsinden ezdiğimiz için kim giderse kendi girisYap metodunu çalıştıracak işte bu çok biçimliliktir.

----------------------------------------------------------------
KALITIMDA KURUCU METOD KULLANIMI - SUPER ANAHTAR KELİMESİ
Kurucu metod: Bir sınıftan nesne oluşturulduğunda ilk çalışan ve çağrılmadan çalışan fonksiyondur. 

class Asker {
  Asker() {
    print("Asker sınıfının kurucu çalıştı");
  }
}

Çağırma:

Asker bilal = Asker();

Sonuc: Asker sınıfının kurucu çalıştı yazar.

sonra Er adında bir sınıf oluşturalım:


class Er{
  Er(){
    print("Er sınıfının kurucu çalıştı");
  }
}

Çağırma:

 Er ali = Er();

Sonuc: Er sınıfının kurucu çalıştı yazar.

Asker sınıfına iki tane değişken tanımladık:
  String ad = "";
  int yas = 0;

  Her er bir asker olduğu için bu değişkenlere onun da ihtiyacı var o zaman er sınıfının asker sınıfından miraz aldırabiliriz. Asker sınıfının başlangıcını şu şekilde değiştiriyoruz:


  class Er extends Asker {}


  Eğer er nesnenin adı çağırmak istiyorsak artık çağırabildiğimizi görüyoruz:

  Er ali = Er();
  ali.ad = "Ali";
  ali.yas = 30;

  Burda dikkat etmemiz gereken şey şu er sınıfından bir nesne üretmek istersem kurucu metod ekrana ne yazıyor onu görelim:

  Hem Asker hem de Er sınıfının kurucu metodu çalışıyor. Ekranda
  Asker sınıfının kurucu çalıştı.
  Er sınıfının kurucu çalıştı. yazdığını gördük

  Eğer siz alt sınıftan nesne oluşturuyorsan üst sınıfın kurucusu çalışır. bu aslında çok mantıklı eğer ben alt sınıf olarak üst sınıfın değişkenlerine ve metotlarına ulaşıyorsam bunun nedeni üst sınıfı çağırmamdan kaynaklanıyor haliyle onun kurucu metodu da çalışıyor.

 Er ali = Er();
ali.selamla();// üst sınıf çalışır çünkü sen alt sınıfa özgü bir şey yapmadın

 Er ali = Er();
  ali.ad = "Ali";
  ali.yas = 30;
  ali.selamla();//artık sen er e özgü birşeyler yaptığın için onlar çalışıyor. 

  Yani üst sınıftaki değişkenleri alıyorsan onun kurucusunu da çalıştırıyor haliyle. 

  Yani bir sınıfın üst sınıfları alt sınıf çağrıldığında mutlaka çalışmak zorundadır

  class Deneme extends Er {
  Deneme() {
    print("Deneme sınıfının kurucusu çalıştı.");
  }
}

Deneme er den türediği için Deneme çalıştıktan sonra er çalıştı. er askerden türediği için asker de çalıştı yani ekranda asker er ve denemenin kurucu mesajlarını görmüş olduk. 
}

Kodun Genel Hali:

  Deneme deneme = Deneme();
}
class Asker {
  String ad = "";
  int yas = 0;
  Asker() {
    print("Asker sınıfının kurucu çalıştı");
  }
  void selamla() {
    print("Merhaba adım $ad ve yasım $yas");
  }
}
class Er extends Asker {
  Er() {
    print("Er sınıfının kurucu çalıştı");
  }
}
class Deneme extends Er {
  Deneme() {
    print("Deneme sınıfının kurucusu çalıştı.");
  }
}

Örnek:
//Araç(kurucusu olsun. modelYili, yolcuKapasitesi ) a) Otobüs(Kurucu) b ) Araba (Kurucu) DizelAraba(Kurucu) BenzinliAraba(Kurucu) c) Komyonet (Kurucu)
  //Araç nesnesi sonra araba nesnesi sonra otobüs nesnesi sonra komyonet nesnesi
  //Dizel ve benzinli oluşturduktan sonra sadece dizen ve benzinli


class Arac {
  int modelYili = 2025;
  String yolcuKapasitesi = "4";

  Arac() {
    print("Araç kurucusu çalıştı");
  }
}
class Araba extends Arac {
  Araba() {
    print("Araba kurucusu çalıştı");
  }
}
class Otobus extends Arac {
  Otobus() {
    print("Otobüs kurucusu çalıştı");
  }
}
class Kamyonet extends Arac {
  Kamyonet() {
    print("Kamyonet kurucusu çalıştı");
  }
}

class DizelAraba extends Araba {
  DizelAraba() {
    print("Dizel araba kurucusu çalıştı");
  }
}

class BenzinliAraba extends Araba {
  BenzinliAraba() {
    print("Benzinli araba kurucusu çalıştı");
  }
}


Main: 

//Arac arac1 = Arac(); //Arac kurucusu çalıştı
  //Araba araba1 = Araba();// hem arac hem de araba kurucusu çalıştı
  //Otobus otobus1 = Otobus(); // hem arac hem de otobüs kurucusu çalıştı
  //Kamyonet kam = Kamyonet();

  DizelAraba dizel =
      DizelAraba(); //hem araç hem araba hem dizel araba kurucusu çalışacak

      Biz burda şuna dikkat etmeliyiz bu sıra ile çalışıyor ama biz parametreli ya da isimlendirilmiş kurucu tanımladığımızda bu duruma dikkat etmemiz gerekecek.
      Ben bir kurucuyu oluştururken parametre gönderebiliyordum. Yani asker sınıfının kurucu metodunu şu şekilde düzenliyorum:

       Asker(this.ad, this.yas) {
      print("Asker sınıfının kurucu çalıştı");
      }

      veri girerkende nesne oluştururken girmemiz gerekiyor bu durumda:

      Asker bora = Asker("bora",34);

      Bunu yapınca asker den kalıtım alan Er sınıfının kurucu metodu bana kızıyor:

      class Er extends Asker {
  Er() {//() içinde kırmızı uyarı var 
    print("Er sınıfının kurucu çalıştı");
  }
}

Ben diyorum ki o zaman değişkenleri Er sınıfına da vereyim kurucu da parametre göndereyim:

class Er extends Asker {
   String ad = "";
  int yas = 0;
  Er(this.ad, this.yas) {
    print("Er sınıfının kurucu çalıştı");
  }
}

yine kızıyor ee zaten kızmazsa da bir sorun var kalıtım kullanmanın ne anlamı kaldı eğer değişkenleri oraya taşıyacaksam değil mi?

Bu sorunu şu şekilde çözmeliyiz: Yukarıdaki konuda da öğrendiğimiz gibi bir sınıf çağrıldığında yani nesne üretildiğinde onun kalıtım aldığı sınıftada arka planda çağrılır. bunu yukarıdaki örnekte ispat etmiştik. o zaman eğer benim üst sınıfım bir parametre alıyorsa kurucusunda o parametreyi alt sınıfı çağrıldığında haliyle ister. Çünkü üçüncü kez söylediğim gibi alt sınıf çağrılınca üst arka planda çağrılır o yüzden üst sınıf alt sınıftan parametre bekler. Peki biz bu parametreyi nasıl göndeririz? İşte alt sınıfımızda kullanıcan üst sınıfın istediği türde parametreler almalıdır ve bu aldığımız parametreleri super anahtar kelimesine göndermeliyiz. Peki super ne? bir sınıfın bir üst sınıfa yani kalıtım aldığı sınava super denir. ve buna parametre gönderirken : operatörü kullanılmalıdır:

Asker sınıfı:

class Asker {
  String ad = "";
  int yas = 0;
  Asker(this.ad, this.yas) {
    print("Asker sınıfının kurucu çalıştı");
  }
  void selamla() {
    print("Merhaba adım $ad ve yasım $yas");
  }
}
 görüldüğü gibi string türünde bir ad ve int türünde yas bekliyor. Eğer bu sınıftan bir alt sınıf oluşturacaksak bu sınıftan nesne oluştururken bize kızar

 Er hasan = Er(); => bizden parametre bekler ama aynı zamanda bunun üst sınıına parametre göndermediğimiz içinde kızar yani burda çözmemiz gereken iki sorun var :

 birinci sorunu şu şekilde çözeriz:


class Er extends Asker {
  Er(String ad, int yas) {
    print("Er sınıfının kurucu çalıştı");
  }
}
yani bu sınıfa parametre verdik bu sınıf mutlu ama bunun kalıtım aldığı üst sınıf mutsuz çünkü bu oluştuğu an üst sınıfta oluştuğu için o da parametre bekliyor. yukarıda dediğim gibi super ile bu aldığımız iki parametreyi üste göndermeliyiz: Onu da bu şekilde yapıcaz:

class Er extends Asker {
  Er(String ad, int yas) : super(ad, yas) {
    print("Er sınıfının kurucu çalıştı");
  }
}
artık herkes mutlu. tanımlarkende parametre girilmesi gerektiği için Er sınıfını şu şekilde çağırıyoruz:

Er hakan = Er("hakan",28);

yani super aslında Asker sınıfıdır.

alt sınıfta tanımladığınız parametre adı neyse super e gönderdiğiniz o dur o yüzden aynı olmak zorunda:

Er(String ad, int yas) : super(ad, yas) 


Genel Kod:

class Asker {
  String ad = "";
  int yas = 0;
  Asker(this.ad, this.yas) {
    print("Asker sınıfının kurucu çalıştı");
  }
  void selamla() {
    print("Merhaba adım $ad ve yasım $yas");
  }
}

class Er extends Asker {
  Er(String ad, int yas) : super(ad, yas) {
    print("Er sınıfının kurucu çalıştı");
  }
}

Main:
  Asker bora = Asker("bora", 34);
  Er hakan = Er("Hakan", 28);
  print(hakan.ad);

  Eğer biz alt sınıf içerisinden üst sınıftaki değişkenlere ulaşmak istiyorsak super kelimesini kullanıcaz :
  super.memleket = "İstanbul";
  class Asker {

  String ad = "";
  int yas = 0;
  String memleket = "Sivas";
  }

  class Er extends Asker {
  Er() {
    print("Er sınıfının kurucu çalıştı");
  }
  void memleketDegistir(String yeniMemleket) {
    super.memleket = "İstanbul";
  }
}


Main:

  Er metehan = Er("Metehan", 25, "Giresun");
  print(metehan.memleket); //Giresun
  metehan.memleketDegistir("Karabük");
  print(metehan.memleket); //Karabük

Kod:

  class Asker {//araç telefon
  String ad = "";
  int yas = 0;
  String memleket = "Sivas";
  Asker(this.ad, this.yas, this.memleket) {
    print("Asker sınıfının kurucu çalıştı");
  }
  void selamla() {
    print("Merhaba adım $ad ve yasım $yas");
  }
}
class Er extends Asker {//araba dokunmatik telefon
  Er(String ad, int yas, String memleket) : super(ad, yas, memleket) {
    print("Er sınıfının kurucu çalıştı");
  }//kurucunun bittiği yer

  void memleketDegistir(String yeniMemleket) {
    super.memleket = yeniMemleket;
  }
}

Özet:

Kalıtım ile kurucu metod ilişkisi

1)Alt sınıf her oluşturuduğunda üst sınıfta çağrılır.

2)Eğer üst sınıfa parametre tanımlıyorsanız alt sınıfa da aynı parametreleri tanımlamalısınız

3)Eğer üst sınıfın parametresi varsa alt sınıfa tanımladığınız parametreleri üst sınıfa göndermeniz gerekir bunu da super anahtar kelimesi ile yapıyoruz.

4)eğer alt sınıfta üst sınıftaki bir değişkeni kullanmak istiyorsanız super ile çağıracaksınız. 


Bana bir tane Departman adında bir üst sınıf oluşturun. Bu sınıfın adi, calisanSayisi, telefonNumrası olsun. Bu sınıftanda muhasebe departmanı ve uretim depertmanı adında iki alt sınıf olsun
 bu iki alt sınıf parametre olarak bu üç değeri alsın ve değerleri değiştirsin. sonra iki alt sınıftadan üçer tane veri ekleyin bunları listeye ekleyin. ve ekrana tüm bilgilerini yazdırın:
 13:10


Main:

  //eğer bir sınıftan nesne üretiyorsanız o sınıf bir üst sınıfa bağlıysa o üst sınıfta çağrılır haliyle ilk çalışan kurucu metod olduğu için üst sınıfın kurucu metodu da çalışır.

  //Departman d1 = Departman();
  //MuhasebeDepartmani md1 = MuhasebeDepartmani();
  //UretimDepartmani ud1 = UretimDepartmani();


Kod:

 class Departman {
  String adi = "";
  int calisanSayisi = 0;
  String telNo = "";
  Departman() {
    print("Departman kurucusu çalıştı");
  }
  void departmanaMailGonder() {
    print("Merhaba işler nasıl gidiyor?");
  }
  void raporGonder() {
    print("Departman raporu gönderildi");
  }
}
class MuhasebeDepartmani extends Departman {
  MuhasebeDepartmani() {
    print("Muhasebe departmanı kurucusu çalıştı");
  }
}
class UretimDepartmani extends Departman {
  UretimDepartmani() {
    print("Üretim departmanı kurucusu çalıştı");
  }
}






class Departman {
  String adi = "";
  int calisanSayisi = 0;
  String telNo = "";
  Departman(this.adi, this.calisanSayisi, this.telNo) {
    //eklenen yer
    //print("Departman kurucusu çalıştı");
  }
  void bilgileriGoster() {
    print("Adı: $adi - çalışan sayısı: $calisanSayisi - tel no: $telNo");
  }

  void departmanaMailGonder() {
    print("Merhaba $adi departmanı işler nasıl gidiyor?");
  }

  void raporGonder() {
    print("Departman raporu gönderildi");
  }
}
Main Son hal:
 MuhasebeDepartmani md = MuhasebeDepartmani("Muhasabe1", 256, "02122565656");
  MuhasebeDepartmani md2 = MuhasebeDepartmani("Muhasabe2", 240, "02122565656");
  MuhasebeDepartmani md3 = MuhasebeDepartmani("Muhasabe3", 230, "02122565656");
  List<MuhasebeDepartmani> muhasebeciler = [md, md2, md3];
  UretimDepartmani ud = UretimDepartmani("Üretim1", 320, "02125656565");
  UretimDepartmani ud2 = UretimDepartmani("Üretim2", 325, "02125656565");
  UretimDepartmani ud3 = UretimDepartmani("Üretim3", 315, "02125656565");
  List<UretimDepartmani> uretimciler = [ud, ud2, ud3];
  print("********* Muhasebe departmanı *********** ");
  listeyiYazdir(muhasebeciler);
  print("********* Üretim departmanı *********** ");
  listeyiYazdir(uretimciler);


Kod Son hali:

void listeyiYazdir(List<Departman> dep) {
  for (Departman d in dep) {
    print("Adı: ${d.adi} - çalışan sayısı: ${d.calisanSayisi}");
  }
}
class MuhasebeDepartmani extends Departman {
  MuhasebeDepartmani(String adi, int calisanSayisi, String telNo)
    : super(adi, calisanSayisi, telNo) {
    //eklenen yer
    //print("Muhasebe departmanı kurucusu çalıştı");
  }
  @override
  void departmanaMailGonder() {
    print("Merhaba ${super.adi} departmanı bana mali raporları gönder");
  }
}

class UretimDepartmani extends Departman {
  UretimDepartmani(String adi, int calisanSayisi, String telNo)
    : super(adi, calisanSayisi, telNo) {
    // print("Üretim departmanı kurucusu çalıştı");
  }
  @override
  void departmanaMailGonder() {
    print("Merhaba ${super.adi} bana üretim çizelgelerini gönder");
  }
}

Kisi adlı bir sınıf ve bundan türüyen Calisan sınıfı ve parametreler ve calisan a ait maas 

Main:

 Kisi bilal = Kisi("bilal", 38);
  bilal.kendiniTanit();
  Calisan hasan = Calisan("hasan", 32, 22500.70);
  hasan.kendiniTanit();

Kod hali:

class Kisi {
  //Eğer bir değişkene değer atamadıysanız ve size kızıyorsa ya varsayılan değer atayacaksınız ya da bunu kurucu metod da çağırmalısın
  String isim;
  int yas;
  //Herkes mutlu :)
  Kisi(this.isim, this.yas);

  void kendiniTanit() {
    print("Benim adım: $isim , yaşım: $yas");
  }
}

class Calisan extends Kisi {
  double maas;
  Calisan(String ad, int yasi, this.maas)
    : super(ad, yasi) {} //parametre sadece kurucu sınıf içinde geçerli
  /*
  @override
  void kendiniTanit() {
    print("Benim adım: ${super.isim} , yaşım: ${super.yas}, maaşım da : $maas");
  }*/
  @override
  void kendiniTanit() {
    super.kendiniTanit();
    print("Maaşım da : $maas");
  }
}


  //Departman olsun ana sınıf Muhasebe, Üretim olsun alt sınıf bunlar.
  //değişkenlerimiz:
  departmanId,
  departmanAdi
  departmanCalisanSayisi
  departmanTelNo
  adSoyad
  maas
  calismaYili
  yillikUretimAdeti
  yillikGelir
  yillikGider

  fonksiyonlar
  ************
  departman bilgisi ver
  yıllık kazanc
  yillik üretim adeti
  calisan bilgisi ver

  Uygulamada neler yaptık:

  1)Departman sınıfı oluşturduk alt departmanlarda gereken tüm değişkenleri bu ana sınıfta topladık:


  class Departman {
  int departmanId = 0; //Alt sınıfta doldurcaz
  String departmantAdi = ""; //Alt sınıfta doldurcaz
  int departmanCalisanSayisi = 0; //Alt sınıfta doldurcaz
  String departmanTelNo = ""; //Alt sınıfta doldurcaz
  List<Calisan> calisanlar = [];
  }

  ve kurucu metodunu oluşturduk:


   Departman(
    this.departmanId,
    this.departmantAdi,
    this.departmanCalisanSayisi,
    this.departmanTelNo,
  );


  2)Daha sonra Muhasebe ve Uretim Departman sınıflarını ve kurucu metotlarını oluşturduk ve üst sınıfa istediği bilgileri vermek için bu sınıfların kurucu metodlarını aşağıdaki gibi düzenledik:

  class MuhasebeDepartmani extends Departman {
  double yillikGelir = 0;
  double yillikGider = 0;

  MuhasebeDepartmani(
    int departmanId,
    String departmanAdi,
    int departmanCalisanSayisi,
    String departmanTelNo,
  ) : super(departmanId, departmanAdi, departmanCalisanSayisi, departmanTelNo);


  class UretimDepartmani extends Departman {
  int yillikUretimAdeti = 0;

  UretimDepartmani(
    int departmanId,
    String departmanAdi,
    int departmanCalisanSayisi,
    String departmanTelNo,
  ) : super(departmanId, departmanAdi, departmanCalisanSayisi, departmanTelNo);
}
}

3)Daha sonra bunlar çalışıyor mu ve adam bizden belki departman bilgisini ister diye şu metodu oluşturduk:

void deparmantBilgisiVer() {
    print(
      "Departman ID: $departmanId\nDepartman Adı: $departmantAdi\nDepartman calişan sayısı: $departmanCalisanSayisi\nDepartman Telefon: $departmanTelNo",
    );
  }

  ve main de bu nesneleri oluşturduk:



  MuhasebeDepartmani muhasebe = MuhasebeDepartmani(
    1,
    "Muhasebe",
    125,
    "02125606060",
  );

  UretimDepartmani uretim = UretimDepartmani(2, "Uretim", 250, "02125606061");
  muhasebe.calisanEkle(
    Calisan(
      adSoyad: "Bilal Karademir",
      departmanAdi: "Muhasebe",
      calismaYili: 6,
      maas: 65000,
    ),
  );

  ve bunların bilgisini çektik

  muhasebe.deparmantBilgisiVer();
  uretim.deparmantBilgisiVer();

  sonuçları doğru şekilde gördük.


4)Departmanda kurucu ile göndermediğimiz calısanlar listesini dolduracağımız sınıfı oluşturduk:


class Calisan {
  String adSoyad;
  double maas;
  int calismaYili;
  String departmanAdi;

  Calisan({
    this.adSoyad = "",
    this.maas = 0,
    this.calismaYili = 0,
    this.departmanAdi = "",
  });
}
bu sınıf için ne lazımsa o değişkenleri oluşturduk ve kurucusunu örnek olsun diye isimlendirilmiş parametre yaptık.


5)Sonrada çalışan ekleyebilmek için Departman sınıfına şöyle bir metod oluşturduk çünkü her iki departman içinde ortak bir metod:

 void calisanEkle(Calisan calisan) {
    calisanlar.add(calisan);
  }

  6)Daha sonra main de oluşturduğumuz muhasebe ve üretim sınıfında bu ekle metodunu çağırarak içerisine calisan sınıfından nesneler gönderdik


muhasebe.calisanEkle(
    Calisan(
      adSoyad: "Bilal Karademir",
      departmanAdi: "Muhasebe",
      calismaYili: 6,
      maas: 65000,
    ),
  );
  uretim.calisanEkle(
    Calisan(
      adSoyad: "Suat Kaya",
      departmanAdi: "Üretim",
      calismaYili: 11,
      maas: 72000,
    ),
  );

  Daha sonrada şimdilik görelim diye for döngüsü ile bu çalışanları yazdırdık:


  print("******** Üretimde çalışanlar **********");
  for (Calisan c in uretim.calisanlar) {
    print(c.adSoyad);
  }
  print("******** Muhasebe çalışanlar **********");
  for (Calisan c in muhasebe.calisanlar) {
    print(c.adSoyad);
  }

  7)Daha sonra çalışan bilgisini getirmek için ortak olduğu için departman sınıfında şu metodu tanımlıyoruz:


  void calisanBilgisiVer() {
    print("********** $departmantAdi Çalışanları *******");
    for (Calisan c in calisanlar) {
      print(
        "Çalişan adı: ${c.adSoyad}, Çalışan dapartmanı : ${c.departmanAdi}, çalışan yılı : ${c.calismaYili}, çalışan maaşı: ${c.maas}",
      );
    }
  }

  8) daha sonra bunu çalıştırmak için mainde oluşturduğumu muhasebe ve uretim nesnelerinde çağırıyoruz:

  muhasebe.calisanBilgisiVer();
  uretim.calisanBilgisiVer();


  

  MuhasebeDepartmani muhasebe = MuhasebeDepartmani(
    1,
    "Muhasebe",
    125,
    "02125606060",
  );

  UretimDepartmani uretim = UretimDepartmani(2, "Uretim", 250, "02125606061");
  muhasebe.calisanEkle(
    Calisan(
      adSoyad: "Bilal Karademir",
      departmanAdi: "Muhasebe",
      calismaYili: 6,
      maas: 65000,
    ),
  );
  uretim.calisanEkle(
    Calisan(
      adSoyad: "Suat Kaya",
      departmanAdi: "Üretim",
      calismaYili: 11,
      maas: 72000,
    ),
  );

  uretim.calisanBilgisiVer();

  */
  bilgiAl();
}

void bilgiAl() {
  while (true) {
    stdout.write(
      "Hangi departmanla ilgili işlem yapmak istiyorsunuz: Muhasebe için 1, Üretim için 2, çıkış için herhangi bir tuş: ",
    );
    String? secimDepartman = stdin.readLineSync();

    if (secimDepartman == "1") {
      MuhasebeDepartmani muhasebe = MuhasebeDepartmani(
        1,
        "Muhasebe",
        100,
        "02125606060",
      );
      while (true) {
        stdout.write(
          "Çalışan eklemek için 1'e departman çalışanlarını listelemek için 2'ye departman hakkında bilgi almak için 3'ye ",
        );
        String? secimIslem = stdin.readLineSync();
        if (secimIslem == "1") {
          stdout.write("Lütfen adınızı soyadınızı giriniz: ");
          String? adSoyad = stdin.readLineSync();
          stdout.write("Lütfen maaşınızı soyadınızı giriniz: ");
          double? maas = double.parse(stdin.readLineSync()!);
          stdout.write("Lütfen calışmaya başladığınız yılı giriniz: ");
          int yil = int.parse(stdin.readLineSync()!);
        } else if (secimIslem == "2") {
          //for döngüsü ile muhasebe çalışanlarını listelicez
        } else if (secimIslem == "3") {
          //muhasebe departmanı bilgilerini yazdıracağız.
        }
      }
    } else if (secimDepartman == "2") {
      UretimDepartmani uretim = UretimDepartmani(
        2,
        "Üretim",
        350,
        "02125606061",
      );
      while (true) {
        stdout.write(
          "Çalışan eklemek için 1'e departman çalışanlarını listelemek için 2'ye departman hakkında bilgi almak için 3'ye ",
        );
        String? secimIslem = stdin.readLineSync();
        if (secimIslem == "1") {
          //Çalışan bilgilerini isteyip çalışan ekle metoduna yazıcaz
        } else if (secimIslem == "2") {
          //for döngüsü ile muhasebe çalışanlarını listelicez
        } else if (secimIslem == "3") {
          //muhasebe departmanı bilgilerini yazdıracağız.
        }
      }
    } else {
      break;
    }
  }
}

//Hangi departman ile ilgili işlem yapmak istiyorsunuz: Muhasebe 1'e üretim için 2'ye çıkış için herhangi bir tuşa basın
//Çalışan eklemek içimn 1'e çalışanları listelemek için 2'ye departman hakkında bilgi almak için 3' çıkış yapmak için herhangi bir tuşa basınız.
//1)
//Lütfen adınızı soyadınız giriniz:
//Lütfen çalışmaya başladığınız yılı giriniz
//lütfen maaşınızı giriniz:
//biz bunu dinamik alıcaz.
//Kaydınız yapılmıştır veririz.
//2)
//Girdiği departmana göre çalışanları listele
//3
//Departman bilgisini yazdır.

class Calisan {
  String adSoyad;
  double maas;
  int calismaYili;
  String departmanAdi;

  Calisan({
    this.adSoyad = "",
    this.maas = 0,
    this.calismaYili = 0,
    this.departmanAdi = "",
  });
}

class Departman {
  int departmanId = 0; //Alt sınıfta doldurcaz
  String departmantAdi = ""; //Alt sınıfta doldurcaz
  int departmanCalisanSayisi = 0; //Alt sınıfta doldurcaz
  String departmanTelNo = ""; //Alt sınıfta doldurcaz
  List<Calisan> calisanlar = [];

  Departman(
    this.departmanId,
    this.departmantAdi,
    this.departmanCalisanSayisi,
    this.departmanTelNo,
  );
  void deparmantBilgisiVer() {
    print(
      "Departman ID: $departmanId\nDepartman Adı: $departmantAdi\nDepartman calişan sayısı: $departmanCalisanSayisi\nDepartman Telefon: $departmanTelNo",
    );
  }

  /*
  int departmanCalisanSayisiGetir() {
    return calisanlar.length;
  }
  */

  void calisanEkle(Calisan calisan) {
    calisanlar.add(calisan);
  }

  void calisanBilgisiVer() {
    print("********** $departmantAdi Çalışanları *******");
    for (Calisan c in calisanlar) {
      print(
        "Çalişan adı: ${c.adSoyad}, Çalışan dapartmanı : ${c.departmanAdi}, çalışan yılı : ${c.calismaYili}, çalışan maaşı: ${c.maas}",
      );
    }
  } //calisan bilgisi metod sonu
}

class MuhasebeDepartmani extends Departman {
  double yillikGelir = 0;
  double yillikGider = 0;

  MuhasebeDepartmani(
    int departmanId,
    String departmanAdi,
    int departmanCalisanSayisi,
    String departmanTelNo,
  ) : super(departmanId, departmanAdi, departmanCalisanSayisi, departmanTelNo);
}

class UretimDepartmani extends Departman {
  int yillikUretimAdeti = 0;

  UretimDepartmani(
    int departmanId,
    String departmanAdi,
    int departmanCalisanSayisi,
    String departmanTelNo,
  ) : super(departmanId, departmanAdi, departmanCalisanSayisi, departmanTelNo);
}
