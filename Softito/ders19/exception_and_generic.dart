import 'dart:math';

void main(List<String> args) {
  /*
 Exception - istisnalar

 1)Try,catch,finally

 -çalışma anında hata olma durumunda bunu önlemek ya da o hatanın ekrana yazması için kullanmamız gereken sistemdir. yani uygulama patlamasın. 
 -Genelde veri tabanı işlemleri sırasında internet gider, veri aldığımız sunucu da hata olur bunun gibi durumlar

//o noktalı kısmını iptal et bana tam kısmını gönder 63.75 gibi sayı ise sonuç bana tam kısmı olan 63 ü verir
  int sayi = 100 ~/ 0; //tanımsızdır o yüzden bir hata çıkar
  print(sayi);
  print("program bitti");
  //işte bir hata çıktığında program tamamlanmadı program bitti yazısı ekrana gelmedi bana bu program bitti yazısını gelmeli. Bunu yapmak için try catch kullanıcağız.

 //yani try catch kullanarak programın patlamasına engel olduk. Program tamamlandı. aynı zamanda hatayı da alabildim
  print("program başladı");
  try {
    int sayi = 100 ~/ 0;
    print(sayi);
  } catch (e) {
    print("Hata çıktı: $e");
  }

  Burdaki e hata bilgisini tutar.

  try:Her türlü çalışır
  catch: Hata varsa çalışır
  finally: Bu da bu yapının bir parçasıdır. catch den sonra tanımlanır. hata çıksın ya da çıkmasın çalışacak olan yerdir.

  print("program başladı");
  try {
    int sayi = 100 ~/ 4;
    print(sayi);
  } catch (e) {
    print("Hata çıktı: $e");
  } finally {
    //hata çıksın ya da çıkmasın çalışacak olan yerdir
    print("işlem bitti");
  }

  print("program bitti");

  -Bazı durumlar bazı hataları spesifik olarak mesaj vermek isteyebiliriz. Mesela sıfıra bölme hatası çıktı düzelt ya da internet yok diye mesajlar vermek isteyebiliriz. Bunun için napcaz. catch olayı en genelidir hatanın sebebini bilmiyorsanız size verir. Ama ben özel mesajlar vermek istiyorum:

  try dan sonra on keywordü nü kullanarak on hatanıntürü yazıp { içine print yazdırabilirsiniz} Örnek integer 0 a bölme hatası

   print("program başladı");
  try {
    int sayi = 100 ~/ 0;
    print(sayi);
  } on IntegerDivisionByZeroException {//şurası
    print("Bölen sıfır olamaz");
  } catch (e) {
    print("Hata çıktı: $e");
  } finally {
    //hata çıksın ya da çıkmasın çalışacak olan yerdir
    print("işlem bitti");
  }

  print("program bitti");

  Formatlama hatası yani dönüştürme olaylarında çıkar siz string i int e dönüştürmek isterseniz mesela bu hata çıkar:

   print("program başladı");
  try {
    int sayi = 100 ~/ int.parse("Bilal");//değişen yer
    print(sayi);
  } on IntegerDivisionByZeroException {
    print("Bölen sıfır olamaz");
  } on FormatException {//eklenen yer
    print("Dönüştürelemeyen türü dönüştürmeye çalışıyorsun");
  } catch (e) {
    print("Hata çıktı: $e");
  } finally {
    //hata çıksın ya da çıkmasın çalışacak olan yerdir
    print("işlem bitti");
  }

  print("program bitti");

  Eğer spesifik olarak açtığımız bir hata bloğunun hatasını direk yazdırmak istersek

    print("program başladı");
  try {
    int sayi = 100 ~/ int.parse("Bilal");
    print(sayi);
  } on IntegerDivisionByZeroException {
    print("Bölen sıfır olamaz");
  } on FormatException catch(e) {//eklenen yer
    print(e);
  } catch (e) {
    print("Hata çıktı: $e");
  } finally {
    print("işlem bitti");
  }

  print("program bitti");

  hatanın açıklamasını yani mesajını ve kaynağını yani yerini gösterebiliriz:

  print("program başladı");
  try {
    int sayi = 100 ~/ int.parse("Bilal");
    print(sayi);
  } on IntegerDivisionByZeroException {
    print("Bölen sıfır olamaz");
  } on FormatException catch (e) {
    print(e.message); //sadece o hatanın açıklamasını yazdın
    print(e.source);//hatanın yeri
  } catch (e) {
    print("Hata çıktı: $e");
  } finally {
    print("işlem bitti");
  }

  print("program bitti");
}

-throw ile hata fırlatma

Problem çıkıyor hata oluşuyor ve hata fırlatıyor işte fırlatma kısmı throw oluyor. Önceki örneğimizde hatalar otomatik fırlatıldı ben hatayı kendim fırlatabilir miyim? işte bunu bu yapı sağlayacak.

Bir tane karekokunuAl adında bir metod oluşturdum bunun içine kok alma işlemlerini yazdırdım:

double karekokunuAl(int i) {
  return sqrt(i);
}

Sonra bunu mainde çağırıp bir değişkene atadım

double deger = karekokunuAl(25);

şu gördüğünüz metod virgüllü bir sayının virgülden sonra kaç basamak olsun isteğimiz ile çalışır:

deger.toStringAsFixed(2) //virgülden sonraki iki basamak olacak.

Hata konusuna dönersek Ama ben bunu şu şekilde düşünmedim ya eksi verirsem.Örnek:

  double deger = karekokunuAl(-8);
  print("Değer: ${deger.toStringAsFixed(2)}");

double karekokunuAl(int i) {
  return sqrt(i);
}

eksi girersem ekranda Nan yazdı. Eksi sayıların karekökü yok ama farkındaysan hata da direk vermedi yani exception fırlatmadı işte bu durumda kendi hatamızı fırlatmamız gerekir.

Eski yöntem ile şöyle yapardık:

double karekokunuAl(int i) {
  if (i < 0) {
    print("lütfen sıfırdan küçük bir sayı girmeyeniz");
    return 0;
  } else {
    return sqrt(i);
  }
}

ama işte biz hata aldığımızda 0 değilde bir hata fırlatmamız lazım. o yüzden if içini temizleyip şunu yazmalıyız:

double karekokunuAl(int i) {
  if (i < 0) {
    throw FormatException("Sayı negatif olamaz");//eklendi
  } else {
    return sqrt(i);
  }
}

throw bir başka özelliği o fırlatılınca artık metodun diğer kısımları kontrol edilmez main de ki ilk çağrıldığı satıra döner. throw metodun çağrıldığı yerde try catch yapısı var mı ona bakar eğer catch varsa catch in hatayı yazdırdığı yerde throw un gönderdiği hata yazar:


  try {//eklendi
    double deger = karekokunuAl(-8);
    print("Değer: ${deger.toStringAsFixed(2)}");
  } catch (e) {//eklendi
    print(e);
  }
}

double karekokunuAl(int i) {
  if (i < 0) {
    throw FormatException("Sayı negatif olamaz"); 
  } else {
    return sqrt(i);
  }
}

şuanki örneğimizde hatamız çok genel yani direk hata yazıyor ben bunun alt başlıklarını message gibi bulmak istersem şu değişikliği yapmalıyım:


  try {
    double deger = karekokunuAl(-8);
    print("Değer: ${deger.toStringAsFixed(2)}");
  } on FormatException catch (e) {    //eklendi
    print(e.message);
  } catch (e) {//eklendi
    print(e);
  }
}

double karekokunuAl(int i) {
  if (i < 0) {
    throw FormatException("Sayı negatif olamaz");
  } else {
    return sqrt(i);
  }
}

Kendi istisna Sınıflarımızı oluşturma:

Bir öğrenci sınıfı oluşturalım içerisine yas değişkeni oluşturalım:

class Ogrenci {
  int yas = 0;
  Ogrenci(int yas) {
    if (yas < 0) {
      print("yas negatif olamaz");
    } else {
      this.yas = yas;
    }
  }
}

Bu şu demek oluyor eğer yaş 0 dan küçükse yaş 0 değerini alacak büyükse girilen değeri alacak. 


Ogrenci ogr = Ogrenci(-5);
  print(ogr.yas);

  ekrana 0 yazıcak ben bunu istemiyorum. Kendi hata sınıfımızı yazabiliriz.

  class AgeException implements Exception {
    String mesaj = "Age Exception";

    AgeException({mesaj});//mesaj isteğe bağlı hale getirdik
  }

Sınıfımıza hata fırlatıcıyı ekledik

  class Ogrenci {
  int yas = 0;
  Ogrenci(int yas) {
    if (yas < 0) {
      throw AgeException();//hata fırlatıldı
    } else {
      this.yas = yas;
    }
  }
}

Bu hatayı (throw) yakalamak için hatayı aldığımız yeri try catch içerisine almalıyız:


try {
    Ogrenci ogr = Ogrenci(-5);
    print(ogr.yas);
  } catch (e) {
    print(e);
  }

  Sonra exception sınıfımıza toString metoduna override edelim:

  class AgeException implements Exception {
  String mesaj = "Age Exception";

  AgeException({mesaj});

  @override
  String toString() {
    return "Hata: $mesaj";
  }
}

Tekrar: 
bir sınıf ya da metotta hata gönderilmesini istediğimi yere throw örneğin bu örnekte hatanın çıkmasını istediğim yer yaşın 0 dan küçük girilme durumunda. Ben kendi hata sınıfımı oluşturmak istiyorum nasıl yaparım hata sınıfı adı üstünde sınıftır yani bir sınıf oluşturacağız ve bunun hata olması bir özellik olduğu için interface olan exception implement ediyoruz. Arka tarafta bu özellik sınıfın türünü değiştiriyor. içerisine mesajı ve kurucusunu yazıyoruz. Burda kurucusu isimlendirilmiş ve zorunlu olmayan parametre verdik. Sonra bu uygulamayı çalıştırırsak uygulama patlar çünkü uygulama yazdığımız hata sınıfından dönecek olan hatayı nasıl yakalayacağını bilmiyor. o yüzden hata alınma ihtimali olan işlemleri daima try catch içerisine almalısınız. try da çalışacak kodları yazdık. catch de ise try dönecek bir hatayı yakalamasını istedik sonra ekrana yaz dedik ve uygulamamız güzel bir şekilde çalıştı.

Eğer mesaja direk ulaşmak istersem main deki kısmı şöyle düzenliyorum:

  try {
    Ogrenci ogr = Ogrenci(-5);
    print(ogr.yas);
  }on AgeException catch (e) {//düzenledi
    print(e.mesaj);
  }

  Biz throw atarken mesaj kısmını doldurmadık doldurursak ne olur onu görelim:
  default olanını yazdırıyor o yüzden şu değişikliği yapalım:

class AgeException implements Exception {
  //hata sınıfımız
  String mesaj = "Age Exception";

  AgeException({mesaj}) {
    this.mesaj = mesaj;
  } //değiştirdik

  @override
  String toString() {
    return "Hata: $mesaj";
  }
}

Sonra throw olan kısmınıda şunu yaptık:


class Ogrenci {
  int yas = 0;
  Ogrenci(int yas) {
    if (yas < 0) {
      throw AgeException("Hata: Yaş sıfırdan küçük olamaz"); //Şurayı düzenledik
    } else {
      this.yas = yas;
    }
  }
}

Çalıştırınca çalıştı. ama mesaj boş bırakırsak patlıyor ona da var sayılan bir değer atamalıyız:

AgeException({mesaj = 'Age Exception'}) {//surası değişti
    this.mesaj = mesaj;//değiştirdik
  } 


Başka bir kullanım :

 String mesaj;

  AgeException({this.mesaj = 'Age Exception'});

  Hata fırlatmanın en güzel yani nesne oluşturmadan hata fırlatıyor yani o nesne oluşmuyor ram rahat biz rahat herkes rahat eğer ramimi meşgul etmek istiyorsan adam ol normal değer gir :D

  --------------------------------------------------------------------

  Generic Tipler:

  -Dart optionally typed bir dildir. Yani veri tiplerini belirtmek isteğe bağlıdır. 

  -Sürekli kullanılan kolaksiyon yapıları (list, map, set) varsayılan olarak heterojendir. Yani aynı koleksiyon yapısından farklı türde verileri saklayabiliriz.Ama bunu yapmalı mıyız?

  -Generic tipler sayesinde bir yapıda hangi tür verilerin olacağını söyleriz. Böylece bu yapılar type-safe olur. Compoile time da hatayı veri girişinde tespit ediilir ve bize hatamızı söyle. Böylede runtime da çıkabilecek hataların önüne geçilir. 


  -Generic tipler <> bu ifadenin içinde belirtilir.List<String> ifadesi bu listede sadece String veriler olacağı anlamını taşır. Bu listeye String dışında veri eklenirse program çalıştırılmadan hata verir ve düzeltmemiz gerekir. Böylece daha güvenle kod yazmış oluruz.

  -Generic tipler dartta bulunan çoğu yapıda zaten vardır.List map set Future Stream gibi.. Kendi oluşturduğumuz sınıflarda ve metotlarda da genericleri uygulayabilirsiniz. Böylece hem daha güvenli kod yazmış oluruz hem de benzer amaçlı gerçekleştirilen kod yapılarını tek bir yapıda toplayabiliriz.

  Ben int türünden bir liste döndüren metod yazıcam. ama eğer listeyi generic tipi olmadan tanımlayıp veri eklersem bu liste benim bu metotta işime yaramayacaktır. O yüzden listenin generic tipini belirlemek hem hata hem düzen hemde kullanışlılık açısındna iyidir.

  Mesela ben generic tipi olmayan bir liste tanımlıyorum:

  List liste = [];
  Sonra baktım ki her veriyi ekliyor oh ne güzel:
  liste.add("bilal");
  liste.add(38);
  liste.add(true);
  ama ya ben bunu bir int döndüren metotta kullanırsam:

List<int> sayilarGetir(List<int> listem) {
  return listem;
}

Çağırırken hata alırım:

sayilarGetir(liste);

Başka bir örnek ben dynamic bir liste oluşturayım:

List liste = [];
  liste.add("bilal");
  liste.add(38);
  liste.add(true);

  sonra ben bunun birinci elemanın boyutunu öğrenmek istiyorum:

listeElemanlarininBoyutu(List listem) {
  print(listem[1].lenght);
}

listeElemanlarininBoyutu(liste);

hata verdi çünkü diyor ki ğer sen bir elemanın boyutunu öğrenmek istiyorsan onun ne olduğunu bel bilmeliyim dynamic de böyle bir durum yok

Eğer türünü belirlersem bana diyor ki bu artık String ben elemanların uzunluğunu nasıl hesaplayacağımı biliyorum::

 List<String> liste = [];
  liste.add("bilal");
  liste.add("Ali");

  listeElemanlarininBoyutu(liste);


  listeElemanlarininBoyutu(List listem) {
  print(listem[0].length);
}

yani bir tanımlama yapılırken generic tipin belirtilmesi çok önemli 
Değişken oluştururken veri tipini belirtmek generic tip değildir. Ama onu da yaparken dynamic ya da var kullanmak hataya sebep olur. Ama generic tip dediğimiz <> arasına yazılanlardır.

yukarıda bahsettiğim type-Safe bellekte bir tip için yer ayrılırken generic tip belirtilirse o yer diyor ki artık ben hep String alıcam diyor sen oraya başka bir veri tipi eklediğinde kabul etmiyor bu da bize code editöründe hata döndürüyor. 

Bu generic tiplerle metod ve sınıflarda oluşturulabilir. Bu sayede type-safe yani tür güvenliği olan uygulamalr geliştirebiliriz. 

Dartta element (E) generic tipler gösterimi

List<E> ---> E türünde element türünde veriler alır diyor
Map<K,V> --> K : key anlamına gelir
Map<K,V> --> V: value anlamına gelir.
R => metodların return tipleri.

//Ogrenci<T extends Insan> : İnsandan miraz almış bir generic tip gelmeli

Generic Sınıflar:
Yığın mantığı kullanarak anlatacağım. Stack demektir:
MyStack adında bir sınıf oluşturuyorum:

class MyStack {
  List _listem = [];

  //Eleman eklemek
  push(yeniEleman) {
    _listem.add(yeniEleman);
  }

  //Son eklenen elemanı silecek
  pop() {
    return _listem.removeLast();
  }
}

İçerisine türü belli olmayan bir liste ve iki tane metod oluşturuyorum. push eleman eklemek için pop silmek için

Sonra main içerisinde nesne oluşturup verileri ekliyorum sonra siliyorum son eklenen ilk silindiğini görüyorum:

MyStack myStack = MyStack();
  myStack.push(5);
  myStack.push("sivas");
  myStack.push(true);

  print(myStack.pop());//true
  print(myStack.pop());//sivas
  print(myStack.pop());//5


Ama bir sorun var ne eklediğimiz belli değil mesela ben buraya int değerler eklemek istiyorum başka değer eklenmek isterse hata almak istiyorum. Bunun için naparız. bir sınıf daha oluşturabilirim. bunuda int yaparım:

class IntMyStack {
  List<int> _listem = <int>[];

  //Eleman eklemek
  void push(int yeniEleman) {
    _listem.add(yeniEleman);
  }

  //Son eklenen elemanı silecek
  int pop() {
    return _listem.removeLast();
  }
}

 bu şekilde bir sınıf oluştururum.

Sonra main de değerler oluşturuyorum mutlaka int olma zorunluluğu var artık:

  IntMyStack intMyStack = IntMyStack();
  intMyStack.push(17);
  intMyStack.push(37);
  intMyStack.push(43);

  int deger = intMyStack.pop();
  print(deger);

  Bunu string içinde yaptık. Bir ton veri tipi var bir de biz kendi veri tiplerimizi oluşturabiliriz.Tüm bu işlerden generic tipler bizi kurtarıyor. Örnekler bakarsak tüm sınıflar aslında aynı işi yapıyor ekliyor ve siliyor. Sadece değişen veri türü. İşte bu durumda bize generic tipler yardımcı oluyor.

  Bir sınıf oluşturalım:


class GenericStack<T> {
  //Burdaki T veri türü.<T> classın generic class olduğunu gösterir
  List<T> _listem = <T>[];

  void push(T yeniEleman) {
    _listem.add(yeniEleman);
  }

  T pop() {
    return _listem.removeLast();
  }
}

Burdaki T bu sınıfın veri türüdür tek bir veri türü kullanılıyor. sınıfın yanına <T> diyerek bu sınıfın generic bir sınıf olduğunu tanımlamış olduk. T harfi genelde generic için kullanır Type ın T sidir.

sonra main içerisine şunu yazıyorum:


GenericStack<int> genericIntStack = GenericStack();
  genericIntStack.push(17);
  genericIntStack.push(25);
  genericIntStack.push(36);

  int silinenIntDeger = genericIntStack.pop();
  print(silinenIntDeger);

  GenericStack<String> genericStringStack = GenericStack();
  genericStringStack.push("Bilal");
  genericStringStack.push("Cemil");
  genericStringStack.push("Hatice");

  String silinenStringDeger = genericStringStack.pop();
  print(silinenStringDeger);

  -Generic fonksiyonlar:
  bazen bütün bir sınıfın generic olmasına gerek yoktur. Sadece belli metodlarda generic kullanabiliriz. 

  Örnek olarak bir metot oluşturalım:

  double ortalamaBul(s1, s2) {
  return (s1 + s2) / 2;
}

main de :

double doubleOrtalama = ortalamaBul(5, 5.4);
  print("Ortalama : $doubleOrtalama");


Ben generic metod oluşturmak istersem şu şekilde tanımlıyorum:


double ortalamaBul<T extends num>(T s1, T s2) {
  return (s1 + s2) / 2;
}

neden extends dedim çünkü ya Ogrenci ya da string olursa onların ortalamasını bulamayız o yüzden sadece num sınıfından türüyenler olsun dedim.

Sonra mainda şöyle yazarsam double int i de kapsadığı için birincisi kızmak ama int olana double gönderirsek kızar:

  double doubleOrtalama = ortalamaBul<double>(5,3);//sorun yok
  double intOrtalama = ortalamaBul<int>(5.3,3.4);//hata var
  print("Ortalama : $doubleOrtalama");


 */
}



/*15:49 eller
10:00-12:00 (1.ders)
12:50 - 14:50 (2.ders)
15:05 - 17:05 (3.ders)
17:20 - 18:20 (4 ders)
*/
