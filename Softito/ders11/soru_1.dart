import 'dart:io';
import 'dart:math';
void main() {
  print("Başlangıç değeri: ");
  int baslangic = int.parse(stdin.readLineSync()!);
  print("Bitiş değeri: ");
  int bitis = int.parse(stdin.readLineSync()!);

  List<int> uretilenSayilar = sayiUret(baslangic, bitis);
  print("Üretilen sayılar: $uretilenSayilar");
  sayilariYazdir(uretilenSayilar);
}


List<int> sayiUret(int baslangic, int bitis) {
  Random r = Random();
  List<int> sayilar = [];

  for (int i = 0; i < 5; i++) {
    int sayi = baslangic + r.nextInt(bitis - baslangic + 1);
    sayilar.add(sayi);
  }

  return sayilar;
}


void sayilariYazdir(List<int> liste) {
  List<int> tekler = [];
  List<int> ciftler = [];

  for (int sayi in liste) {
    if (sayi % 2 == 0) {
      ciftler.add(sayi);
    } else {
      tekler.add(sayi);
    }
  }

  print("Tek sayılar: $tekler");
  print("Çift sayılar: $ciftler");
}


