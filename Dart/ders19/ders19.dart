import 'dart:io';

void main(List<String> args) {
  /*
  Asenkron Programlama - Future:

  -Bu bölüm çok önemli flutter da çok kullanıcaz.
  -Senkron: Bir restorant var üç masa var. Bir numaralı masa sipariş istedi garson geldi siparişi aldı. Patates kızarması ve sucuklu yumurta istedik. Garson gitti siparişi mutfağa söyledi. Sonra bu bizim sipariş yaklaşık 15 dk da hazır olacak. Mutfak ya da garson eğer senkron bir şekilde çalışıyorsa benim siparişim olup garson bana getirene kadar diğer masalar bekleyecek. diğer masalar bekleyecek hemde baya sonra 2 nolu masa sipariş verecek 1 nolu masanın isteği geldiğinde sonra 2 no da bana kuymak yap diyecek garson gidcek mutfağı bekleyecek en az 30 dk sonra 3-4 nolu masalar baya bekliyecek böyle bir şey olabilir mi? hayır. Ama kod yapısında yukarıdan aşağıya çalışırken eğer biz senkron yapıyorsa bu şekilde çalışır standart budur. Biz bunun olmasını istemiyorsak asenkron tanımlamaları yaparız.

  -Asenkron:
  Gerçek hayatta olay şöyle gerçekleşir. Garson 1 nolu masaya gider.Siparişi alır mutfağa iletir. Sonra durmadan 2 nolu masanın siparişini almaya gider. Sonra o siparişi mutfağa verir. Eğer masa1 in siparişi hazırsa soğumasın diye onu götürür ordan masa 3 e sipariş almaya gider eğer masa1 hazır değilse masa2 nin siparişini ilettikten sonra direk masa3 ün siparişini alır. Yani bir olay diğeri için beklemek zorunda kalmaz. 

  Örnek: Düşünsenize siz instagram da bir foto yüklüyorsunuz internetiniz yavaş yükleme yapılana kadar yükleme sayfasında uygulamanın kaldığını düşünsenize valla uygulamayı silerim. senkronda resim veritabanına eklenene kadar beklenir sonra ana sayfaya döner ama asenkronda resim yükleme gönderildi ana sayfaya geri dönersin uygulamada gezinebilirsin herşeyi yaparsın ama ekranın en üstünde instagram logosu vardır yukarıdan aşağıya sürükleme işlemini yaparsan orda bildirimde resim yükleniyor yazar altında da loading bar vardır. Yani bu yükleme işlemi seni bekletmez arka tarafta devam eder bu asenkron programlamadır.

  Örnek: Mesela siz uyuyorsunuz. Anneniz kahvaltı hazırlıyor. Sonra anneniz diyor oğlum(kızım) ekmek al gel. Sizde yataktan uyanmıyorsunuz ya anne ben alamam diyorsunuz. Sonra anneniz tamam ben alırım diyor hazırlanmaya gidiyor ona kıyamıyorsunuz vicdan yapıyorsunuz kalkıp hazırlanıyorsunuz. Sonra çocuk bakkala gitti yani çocuktan ekmek isteğini gönderik. Şimdi anneniz siz ekmek alıp gelene kadar sizi mi bekliyor? oğlum ekmek alsın yumurtayı peyniri sonra mı hazırlayayım diyor? Tabiki hayır anne sofrayı hazırlamaya devam ediyor. İşte annenin ekmeğe bağlı olmadan diğer işleri yapıyor olması asenkron programlamadır.

  ---------------Future ve Asenkron---------------

  Senkron örneği: Anne çocuğu bekliyor mantıksız ama senkron
  Main e şu kodları yazıyorum:

  print("Anne çocuğu ekmek almaya yollar");
  uzunSureliIslem();
  print("Peynir zeytin hazırlanır");
  print("Kahvaltı hazır");

  Metodu oluşturdum:

  void uzunSureliIslem() {
  //bu fonksiyon metodu bekletir. 5 ssaniye bekleyecek
  sleep(Duration(seconds: 5));

  Peki biz bu sorunu nasıl çözücez. Asenkron sınıflar vardır.Bunlar en önemlisi Future dir. Yani metotta dart ın senkron olan metodu olan sleep i kullanmak yerine Future.delayed ı kullanmalıyız. Çünkü Future sınıfı asenkron yapıda çalışan bir snıftır. 
}

fonksiyonun içerisini şu şekilde düzenliyorum:
Asenkron örneği:

void uzunSureliIslem() {
  print("Çocuk evden eklemk almak için çıkar");
  //10 saniye sürsün. ikinci parametre de bittiken sonra ne olsun bir fonksiyon alır.
  Future.delayed(Duration(seconds: 10), () {
    print("Çocuk ekmekle eve gider");
  });
}

main de de tekrar aynı işlemleri yazdım:


print("Anne çocuğu ekmek almaya yollar");
  uzunSureliIslem();
  print("Peynir zeytin hazırlanır");
  print("Kahvaltı hazır");

  sonra çalıştırıyorum bakalım ne oluyor görelim:

  Anne işlemleri yaparken bekleme yapmadı çocuk gelene kadar işlerine devam etti sonra çocuk geldi.

  then, catchError ve whenCompleted kavramları:

  a)then: Ben bekleyen fonksiyon veriyi gönderdi ben bu veriyi fonksiyon içerisinde değilde fonksiyonun çağrıldığı yerde elde etmek istiyorsam. Fonksiyonu şu şekilde değiştiriyorum:

  void uzunSureliIslem() {
  print("Çocuk evden eklemk almak için çıkar");
  //10 saniye sürsün. ikinci parametre de bittiken sonra ne olsun bir fonksiyon alır.
  Future.delayed(Duration(seconds: 10), () {
    return "Çocuk ekmekle eve girer";
  });
}

 farkettiyseniz artık benim bir return üm var ama ben bu return e metodun değeri olarak alamıyorum. 

 String deger = uzunSureliIslem(); hata alıyorum

 bu yüzden bu olmaz peki ben return u nasıl getiricem. O yüzden ben metodumun dönüş değerini Future üründen yapmalıyım:

  Future<String> uzunSureliIslem() {
  print("Çocuk evden eklemk almak için çıkar");
  //10 saniye sürsün. ikinci parametre de bittiken sonra ne olsun bir fonksiyon alır.
  Future.delayed(Duration(seconds: 10), () {
    return "Çocuk ekmekle eve girer";
  });
}

yani artık Future türünde ve veri türü olarak String olan bir değer döndürüyorum. Şimdide bana ama ben return u bulamıyorum diye hata veriyor. Bende bu delay metodunun verdiği değeri istenen değer için bir değişkene atayıp bu işlem bittikten sonra değişkeni doldurup dönsün istiyorum:

Future<String> uzunSureliIslem() {
  print("Çocuk evden eklemk almak için çıkar");
  //10 saniye sürsün. ikinci parametre de bittiken sonra ne olsun bir fonksiyon alır.
  Future<String> sonuc = Future.delayed(Duration(seconds: 2), () {
    return "Çocuk ekmekle eve girer";
  });

  return sonuc;
}

ben bunu artık String gelen diye bir değişkene atayabilir miyim? hayır yine veri uyuşmazlığı var. O zaman ben verileri aynı olanı vermem lazım.

Future<String> gelen = uzunSureliIslem();

ama hala ekrana yazdırırsam sıkıntı çünkü gelen değişkeninin içi henüz olması iki saniye bekleme yapıp ondan sonra ekrana yazırabiliriz. işte burda then metodu işe giriyor. 

 //Bu değişkenin içinin dolmasını 2 snaiye beklemeli
  gelen.then((value) => print(value));

gelen.then((value) => print(value)): burda then demek gelen değişkeninin içi yukarıda eşitlendiği uzunSureliIslem metodu bittikten sonra value yani o metodun döndürdüğü string değeri alıyor ve ekrana yazdırıyor.

Peki eğer yükleme yapılırken ya hata alırsak bunu napcaz? başarılı ise bunu çalıştır (then) ama hata varsa napcaz

catchError:
hata durumunda then in sonuna . ile eklenir:

 gelen.then((value) => print(value)).catchError((hata) {
    print(hata);

hata almak için fonksiyonun içerisini değiştirdik:


Future<String> uzunSureliIslem() {
  print("Çocuk evden eklemk almak için çıkar");

  Future<String> sonuc = Future.delayed(Duration(seconds: 2), () {
    //return "Çocuk ekmekle eve girer";//yorum satırı yaptık hata almak için
    throw Exception("Bakkald ekmek kalmamış");//ekledik
  });

  return sonuc;
}

c)whenComplete(): finally ye benzer. hata olsun ya da olmasın her türlü çalışır. catchError dan sonra nokta koyarak çağrılır:

 gelen
      .then((value) => print(value))
      .catchError((hata) {
        print(hata);
      })
      .whenComplete(() => print("Ekmek alma işlemi tamamlandı."));

  Bizim ana yapımız şuydu:

  print("Anne çocuğu ekmek almaya yollar");
  print("Çocuk ekmak almak için evden çıkar");
  uzunSureliIslem();

  print("Peynir zeytin hazırlanır");
  print("Kahvaltı hazır");
}

void uzunSureliIslem() {
  Future.delayed(Duration(seconds: 2), () {
    print("Çocuk ekmekle eve girer");
  });
}

1. yapılan dönüş değerini değiştirdik:

Future<String> uzunSureliIslem()

2.adam bana kızıyor return yok ki diyor haliyle bende gidiyorum Future delay kısmını return ekliyorum başına ve bunun generic tipinin string olacağını belirtiyorum:

return Future<String>.delayed

3.Bana hala kızıyor çünkü return içerisinde yok içerisini de şu şekilde değiştiriyorum:

return "Çocuk ekmekle eve girer";

4)Main de değişken tanımlamanıza gerek yok. Uzun süren işlem fonksiyonu zaten Future döndürdüğü için ona then diyebiliriz.

  uzunSureliIslem()
  .then((value) => print(value))
  .catchError((hata)=> print(hata))
  .whenComplete(()=> print("Ekmek alma işlemi tamamlandı"));


 */

  print("Anne çocuğu ekmek almaya yollar");
  print("Çocuk ekmak almak için evden çıkar");
  uzunSureliIslem()
  .then((value) => print(value))
  .catchError((hata)=> print(hata))
  .whenComplete(()=> print("Ekmek alma işlemi tamamlandı"));

  print("Peynir zeytin hazırlanır");
  print("Kahvaltı hazır");
}

Future<String> uzunSureliIslem() {
  return Future<String>.delayed(Duration(seconds: 2), () {
    return "Çocuk ekmekle eve girer";
  });
}

/*17:05
10:00-12:00 (1.ders)
12:50 - 14:50 (2.ders)
15:05 - 17:05 (3.ders)
17:20 - 18:20 (4 ders)
*/
