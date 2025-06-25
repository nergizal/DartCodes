//ÖDEVLERİN TAMAMI
/*
import 'dart:io';
void main(List<String> args) {
  geneIslemler();
}
///////////////////////////////ÖDEV:STOK TAKİP UYGULAMASI EKLEMELER//////////////////////////////////
//Urun adında bir sınıfım +
//Sınıf değişkenlerim : urunAd, urunFiyat, urunAdet, stoktaMi +
//sınıf içerisin kurucu metod ile alıcam +
//sınıf içerisinde ekle metodum +
//Listele metodum olacak +
//Sil +
//Güncelle metodum olacak +
//Arama metodum +


  void geneIslemler() {
  print("***** Stok Takip Uygulamasına Hoş geldiniz *****");
  List<Urun> urunler = [];
  while (true) {
    stdout.write(
      "Ürün eklemek için 1 e Ürün listelemek için 2'ye ürün aramak için 3'e ürün güncellemek için 4'e ürün silmek için 5'e  Fiyata göre arama için 6'ya Stok durumuna göre arama için 7'ye çıkış yapmak için herhangi bir tuyşa basınız: ",
    );
    String secim = stdin.readLineSync()!;
    if (secim == "1") {
      bilgileriAlveEkle(urunler);
    } else if (secim == "2") {
      urunListele(urunler);
    } else if (secim == "3") {
      urunBulma(urunler);
    } else if (secim == "4") {
      urunGuncelle(urunler);
    } else if (secim == "5") {
      urunSilme(urunler);
    } else if (secim == "6") {
      fiyatArama(urunler);
  }   else if (secim == "7") {
      stokArama(urunler);
}
      break;
    }
  }



//Güncellenecek ürün adı ve yeni adı kullanıcıdan alınır.
//Ürün adı eşleşen nesne güncellenir
void urunGuncelle(List<Urun> urunler) {
  stdout.write("Lütfen güncellemek istediğiniz ürünün adınız yazınız: ");
  String urunAd = stdin.readLineSync()!;
  stdout.write("Lütfen ürünün yeni adınız yazınız: ");
  String yeniUrunAd = stdin.readLineSync()!;
  for (Urun u in urunler) {
    if (u.urunAd == urunAd) {
      u.urunAd = yeniUrunAd;
    }
  }
}



//Kullanıcıdan silinecek ürünün adı alınır
//Listeyi dolaşır, eşleşirse remove() ile siler.
void urunSilme(List<Urun> urunler) {
  stdout.write("Lütfen silmek istediğiniz ürünün adınız yazınız: ");
  String urunAdi = stdin.readLineSync()!;
  for (Urun urun in urunler) {
    if (urun.urunAd == urunAdi) {
      urunler.remove(urun);
      break;
    }
  }
}


//Kullanıcıdan isim alır.
//Aranan ürün var mı diye listeyi kontrol eder.
void urunBulma(List<Urun> urunler) {
  stdout.write("Lütfen aramak istediğiniz ürünün adınız yazınız: ");
  String urunAd = stdin.readLineSync()!;
  bool urunVarmi = false;
  for (Urun urun in urunler) {
    if (urun.urunAd == urunAd) {
      urunVarmi = true;
      break;
    }
  }
  if (urunVarmi) {
    print("Ürün var");
  } else {
    print("Ürün yok");
  }
}


//Liste boşsa uyarı verir.
//Değilse sırayla tüm ürünleri yazdırır.
void urunListele(List<Urun> urunler) {
  int sayac = 0;
  if (urunler.length == 0) {
    print("Henüz bir ürün eklemediniz");
  } else {
    for (Urun u in urunler) {
      sayac++;
      print("***** Eklenen $sayac. ürün: ******");
      u.urunListeleme();
    }
  }
}

void bilgileriAlveEkle(List<Urun> urunler) {
  stdout.write("Lütfen ürün adını giriniz: ");
  String? urunAd = stdin.readLineSync();
  stdout.write("Lütfen ürün adedini giriniz: ");
  int urunAdet = int.parse(stdin.readLineSync()!);
  stdout.write("Lütfen ürün fiyatını giriniz: ");
  double urunFiyat = double.parse(stdin.readLineSync()!);
  stdout.write("Lütfen ürün stokta mı bilgisini giriniz: ");
  String? urunStoktaBilgisi = stdin.readLineSync();
  bool urunStoktaMi;
  urunStoktaBilgisi == "Evet" ? urunStoktaMi = true : urunStoktaMi = false;
  Urun urun = Urun(
    urunAd: urunAd!,
    urunAdet: urunAdet,
    urunFiyat: urunFiyat,
    urunStoktaMi: urunStoktaMi,
  );
  urunler.add(urun);
}






//ÖDEV OLAN KISIM
void fiyatArama(List<Urun> urunler) {
  stdout.write("Fiyat sınırını giriniz: ");
  double fiyatSiniri = double.parse(stdin.readLineSync()!);

  stdout.write("Daha ucuz ürünleri görmek için 'Daha ucuz', daha pahalıları görmek için 'Daha pahalı' yazınız: ");
  String tercih = stdin.readLineSync()!;

  List<Urun> sonuc = [];

  if (tercih == "Daha ucuz") {
    for (var u in urunler) {
      if (u.urunFiyat! < fiyatSiniri) {
        sonuc.add(u);
      }
    }
  } else if (tercih == "Daha pahalı") {
    for (var u in urunler) {
      if (u.urunFiyat! > fiyatSiniri) {
        sonuc.add(u);
      }
    }
  } else {
    print("Geçersiz bir giriş yaptınız.");
    return;
  }

  if (sonuc.length == 0) {
    print("Belirtiğiniz fiyata uygun ürün bulunamadı.");
  } else {
    print("Girdiğiniz fiyat aralığına göre uygun ürünler:");
    for (var u in sonuc) {
      u.urunListeleme();
    }
  }
}




//ÖDEV OLAN KISIM
void stokArama(List<Urun> urunler) {
  stdout.write("Sadece stokta olan ürünleri mi görmek istersiniz? (Evet/Hayır): ");
  String cevap = stdin.readLineSync()!;
  bool stoktaMi;
  if (cevap == "Evet" || cevap == "evet") {
  stoktaMi = true;
  } else {
  stoktaMi = false;
  }

  List<Urun> sonuc = [];

  for (var u in urunler) {
    if (u.urunStoktaMi == stoktaMi) {
      sonuc.add(u);
    }
  }

  if (sonuc.length == 0) {
    print("Bu kritere uygun ürün bulunamadı.");
  } else {
    print("Çıkan ürünler:");
    for (var u in sonuc) {
      u.urunListeleme();
    }
  }
}

class Urun {
  String? urunAd;
  int? urunAdet;
  double? urunFiyat;
  bool? urunStoktaMi;


  //required kullanılarak isimlendirilmiş parametrelerle kurucu metod tanımlandı.
  Urun({
    required this.urunAd,
    required this.urunAdet,
    required this.urunFiyat,
    required this.urunStoktaMi,
  });
  void urunListeleme() {
    String stokDurum = "";
    urunStoktaMi! ? stokDurum = "Var" : stokDurum = "Yok";
    print(
      "Ürün adı: $urunAd\nÜrün adet: $urunAdet\nÜrün fiyat: $urunFiyat\n Stok durumu : $stokDurum",
    );
  }
}



*/





///////////////////////////////ÖDEV: OTOGALERİ UYGULAMASI//////////////////////////////////////////////////////////////

/* import 'dart:io';

void main() {
  aracIslemleri();
}

// Ana menü 
void aracIslemleri() {
  print("***** Oto Galeri Otomasyonuna Hoş Geldiniz *****");
  List<Arac> araclar = [];
  while (true) {
    stdout.write(
      "Araç eklemek için 1, listelemek için 2, arama için 3, güncellemek için 4, silmek için 5, çıkmak için herhangi bir tuşa basınız: ",
    );
    String secim = stdin.readLineSync()!;
    if (secim == "1") {
      aracEkle(araclar); 
    } else if (secim == "2") {
      aracListele(araclar); 
    } else if (secim == "3") {
      aracBul(araclar); 
    } else if (secim == "4") {
      aracGuncelle(araclar); 
    } else if (secim == "5") {
      aracSil(araclar); 
    } else {
      print("Çıkış");
      break;
    }
  }
}

// Araç ekleme 
void aracEkle(List<Arac> araclar) {
  stdout.write("Araç ismini giriniz: ");
  String aracIsim = stdin.readLineSync()!;
  stdout.write("Araç adedini giriniz: ");
  int aracAdet = int.parse(stdin.readLineSync()!);
  stdout.write("Araç stokta mı (Evet/Hayır): ");
  String stokCevap = stdin.readLineSync()!;
  bool stoktaMi;
  if (stokCevap == "Evet" || stokCevap == "evet") {
    stoktaMi = true;
  } else {
    stoktaMi = false;
  }

  araclar.add(Arac(aracIsim, aracAdet, stoktaMi));
  print("Araç başarıyla eklendi.");
}

// Araç listeleme
void aracListele(List<Arac> araclar) {
  if (araclar.length == 0) {
    print("Henüz araç eklenmedi. ");
    return;
  }
  for (var i = 0; i < araclar.length; i++) {
    print("Araç ${i + 1}:");
    araclar[i].yazdir();
  }
}

// Araç arama fonksiyonu
void aracBul(List<Arac> araclar) {
  stdout.write("İstediğiniz aracın ismini giriniz: ");
  String aranan = stdin.readLineSync()!;
  bool bulundu = false;
  for (var arac in araclar) {
    if (arac.isim == aranan) {
      print("İstenilen araç bulundu:");
      arac.yazdir();
      bulundu = true;
      break;
    }
  }
  if (!bulundu) {
    print("İstenilen araç bulunamadı.");
  }
}

// Araç güncelleme 
void aracGuncelle(List<Arac> araclar) {
  stdout.write("Güncellemek istediğiniz aracın ismini giriniz: ");
  String eskiIsim = stdin.readLineSync()!;
  for (var arac in araclar) {
    if (arac.isim == eskiIsim) {
      stdout.write("Yeni araç ismini giriniz: ");
      String yeniIsim = stdin.readLineSync()!;
      stdout.write("Yeni araç adedini giriniz: ");
      int yeniAdet = int.parse(stdin.readLineSync()!);
      stdout.write("Araç stokta mı? (Evet/Hayır): ");
      String stokCevap = stdin.readLineSync()!;
      bool stoktaMi;
      if (stokCevap == "Evet" || stokCevap == "evet" ) {
        stoktaMi = true;
      } else {
        stoktaMi = false;
      }
      arac.isim = yeniIsim;
      arac.adet = yeniAdet;
      arac.stoktaMi = stoktaMi;
      print("Araç bilgileri güncellendi.");
      return;
    }
  }
  print("Araç bulunamadı.");
}

// Araç silme fonksiyonu
void aracSil(List<Arac> araclar) {
  stdout.write("Silmek istediğiniz aracın ismini giriniz: ");
  String silinecekIsim = stdin.readLineSync()!;
  for (var i = 0; i < araclar.length; i++) {
    if (araclar[i].isim == silinecekIsim) {
      araclar.removeAt(i);
      print("Girdiğiniz araç silindi.");
      return;
    }
  }
  print("Araç bulunamadı.");
}

// Araç sınıfı
class Arac {
  String isim;
  int adet;
  bool stoktaMi;

  Arac(this.isim, this.adet, this.stoktaMi);

 
  void yazdir() {
    String stokDurumu = stoktaMi ? "Stokta var" : "Stokta yok";
    print("İsim: $isim, Adet: $adet, Stok durumu: $stokDurumu");
  }
}
 */








//Ders 12'nin sonunda böyle bir ödev daha gördüm hocam :
//Ödev: Yazılım bir sınıf. Egitmen sınıfı. Dersler sınıf. Ogrenciler sınıfı. bu sınıfların değişkenlerini oluşturun.
//Yazılım sınıfının değişkenleri ogrenciSayisi, Bina numarası, eğitmenler(string), ogrenciler(string), dersler(string)


void main() {
  Yazilim yazilim = Yazilim();
  yazilim.ogrenciSayisi = 40;
  yazilim.binaNumarasi = 10;
  yazilim.egitmenler = "Bilal hoca, Ayşe hoca";
  yazilim.ogrenciler = "Nergiz, Nergiz2";
  yazilim.dersler = "Mobil Programlama";

  yazilim.BilgileriYazdir();
}

class Yazilim {
  int ogrenciSayisi = 0;
  int binaNumarasi = 0;
  String egitmenler = "";
  String ogrenciler = "";
  String dersler = "";

  void BilgileriYazdir() {
  print("Öğrenci Sayısı: $ogrenciSayisi, Bina Numarası: $binaNumarasi, Eğitmenler: $egitmenler, Öğrenciler: $ogrenciler, Dersler: $dersler");
}
}
class Ogrenci {
  String isim = "";
  int yas = 0;
}


class Ders {
  String dersAdi = "";
  int saat = 0;
}

class Egitmen {
  String isim = "";
  String bransi = "";
}


