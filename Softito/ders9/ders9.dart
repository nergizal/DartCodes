import 'dart:io';

import 'dart:math';

/* void main(List<String> args) {
  veriIste();
}

List<String> isimEkle = List.filled(5, "");
void veriIste() {
  for (int i = 0; i < 5; i++) {
    stdout.write("${i + 1}.isimi giriniz: ");
    String? isim = stdin.readLineSync();
    isimEkle[i] = isim!;
  }
  print("******İsim Sonuçları*********");
  isimleriYazdir(isimEkle);
}

void isimleriYazdir(List<String> liste) {
  int sayac = 0;
  for (String isim in isimEkle) {
    sayac++;
    print("Girilen $sayac. isim $isim");  
  }
}
 */

///////////////////////////////////////////////////////////////////////////////////////////////////////////

/* void main(List<String> args) {
  sayiIste();
}

void sayiIste() {
  List<int> sayilar = [];
  for (int i = 1; i <= 5; i++) {
    stdout.write("$i.sayıyı giriniz");
    int sayi = int.parse(stdin.readLineSync()!);
    sayilar.add(sayi);
  }
  ciftKontrol(sayilar);
}

void ciftKontrol(List<int> gelenSayilar) {
  List<int> ciftSayilar = [];
  for (int s in gelenSayilar) {
    if (s % 2 == 0) {
      ciftSayilar.add(s);
    }
  }
  ekranaYazdir(ciftSayilar);
}

void ekranaYazdir(List<int> yazdirilacakListe) {
  int sayac = 0;
  for (int yazilacakSayi in yazdirilacakListe) {
    sayac++;
    print("Girilen çift sayılardan $sayac sayı: $yazilacakSayi");
  }
}
 */

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/* void main(List<String> args) {
  sayiIste();
}

void sayiIste() {
  List<int> sayilar = [];
  for (int i = 1; i <= 5; i++) {
    stdout.write("$i.sayıyı giriniz");
    int sayi = int.parse(stdin.readLineSync()!);
    sayilar.add(sayi);
  }
  tekCiftKontrol(sayilar);
}

tekCiftKontrol(List<int> gelenSayilar) {
  List<int> tekSayilar = [];
  List<int> ciftSayilar = [];
  for (int sayi in gelenSayilar) {
    if (sayi % 2 != 0) {
      tekSayilar.add(sayi);
    } else {
      ciftSayilar.add(sayi);
    }
  }
  print("***girilen tek sayılar");
  for (int tek in tekSayilar) {
    print(tek);
  }
  print("***Çift sayılar");
  for (int cift in ciftSayilar) {
    print(cift);
  }
}
 */

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/* void main(List<String> args) {
  BilgiGir();
}

BilgiGir() {
  stdout.write("Lütfen Ay giriniz");
  String? ay = stdin.readLineSync();
  ayKontrol(ay!);
}

void ayKontrol(String gelenAy) {
  List<String> yazAylari = ['Haziran', 'Temmuz', 'Ağustos'];
  List<String> kisAylari = ['Aralık', 'Ocak', 'Şubat'];
  List<String> ilkbaharAylari = ['Mart', 'Nisan', 'Mayıs'];
  List<String> SonhabarAylari = ['Eylül', 'Ekim', 'Kasım '];

  String mevsim = "";

  for (String y in yazAylari) {
    if (y == gelenAy) {
      mevsim = "Yaz";
    }
  }

  for (String y in ilkbaharAylari) {
    if (y == gelenAy) {
      mevsim = "İlkbahar";
    }
  }

  for (String y in kisAylari) {
    if (y == gelenAy) {
      mevsim = "Kış";
    }
  }

  for (String y in SonhabarAylari) {
    if (y == gelenAy) {
      mevsim = "Sonbahar";
    }
  }

  ekranaYaz(mevsim, gelenAy);
}

void ekranaYaz(String gelenMevsim, String ayim) {
  print("Girilen $ayim ayının mevsimi $gelenMevsim");
}
 */

//////////////////////////////////////////////////////////////////////////////////////////////

/* void verileriGir(){
  while(true){
    stdout.write("Sayı üretmek için a ya çıkmak için herhangi bir tuşa basın ");
    String? secim =stdin.readLineSync();
    if(secim == "a" || secim == "A"){
      sayiOlustur();
    }else{
      break;
    }
  }
}


void sayiOlustur(){
  Random r = Random();
  List<int> sayilar =[];
  for(int i=1; i<=5; i++){
    int sayi = r.nextInt(20) +1;
    sayilar.add(sayi);

  }
  sayilariToplaVeEkranaYaz(sayilar);

}
void sayilariToplaVeEkranaYaz(List<int> gelenSayilar){
  print("**Gelen sayılar**");
  int sayac =0;
  for(int sayi in gelenSayilar){
    sayac ++;
    print("$sayac. sayı: $sayi");
  }
  print("**Sayıların Toplamı**");
  int toplam =0;
  for(int sayi in gelenSayilar){
  toplam += sayi;
}
print("Sayıların toplamı: $toplam");
} */

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/* void main(List<String> args) {
  kullaniciBilgi();
}

void kullaniciBilgi() {
  stdout.write("Lütfen kaç sayı üretmek istediğinizi yazın: ");
  int adet = int.parse(stdin.readLineSync()!);
  sayiUret(adet);
  ekranaYazdir(adet);
}

List<int> sayiUret(int gelenAdet) {
  List<int> sayilar = [];
  Random r = Random();
  for (int i = 0; i <= gelenAdet; i++) {
    int sayi = r.nextInt(50) + 1;
    sayilar.add(sayi);
  }
  return sayilar;
}

void ekranaYazdir(int sonAdet) {
  List<int> gelensayiListesi = sayiUret(sonAdet);
  {
    for (int sayi in gelensayiListesi) {
      print("GELEN SAYİ $sayi");
    }
    print("GELEN SAYİLARIN LİSTESİNİN ELEMAN SAYİSİ ${gelensayiListesi.length}");
  }
} */

List<String> isimler = [];
List<int> sayilar = [];

void main() {
  girdileriAl();
}

void girdileriAl() {
  isimleriAl();
  sayilariAl();

  while (true) {
    stdout.write(
        "\nİsimleri görmek için 1, sayıları görmek için 2, çıkmak için 0 giriniz: ");
    String secim = stdin.readLineSync()!;

    if (secim == "1") {
      isimleriYazdir();
    } else if (secim == "2") {
      sayilariYazdir();
    } else if (secim == "0") {
      print("Programdan çıkılıyor...");
      break;
    } else {
      print("Hatalı seçim. Sadece 1, 2 veya 0 giriniz.");
    }
  }
}

void isimleriAl() {
  print("Lütfen 5 isim girin:");
  for (int i = 0; i < 5; i++) {
    stdout.write("${i + 1}. isim: ");
    String isim = stdin.readLineSync()!;
    isimler.add(isim);
  }
}

void sayilariAl() {
  print("\nLütfen 5 sayı girin:");
  for (int i = 0; i < 5; i++) {
    stdout.write("${i + 1}. sayı: ");
    int sayi = int.parse(stdin.readLineSync()!);
    sayilar.add(sayi);
  }
}

void isimleriYazdir() {
  print("\nGirdiğiniz isimler:");
  for (int i = 0; i < isimler.length; i++) {
    print("${i + 1}. isim: ${isimler[i]}");
  }
}

void sayilariYazdir() {
  print("\nGirdiğiniz sayılar:");
  for (int i = 0; i < sayilar.length; i++) {
    print("${i + 1}. sayı: ${sayilar[i]}");
  }
}
