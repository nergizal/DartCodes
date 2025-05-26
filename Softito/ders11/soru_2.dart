import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  Set<int> sayilar = {};
  Random r = Random();
  for (int i = 0; i < 5; i++) {
    int sayi = r.nextInt(100);
    sayilar.add(sayi);
  }

  print(sayilar);

  int toplam = 0;
  for (var n in sayilar) {
    toplam = n + toplam;
  }
  print(toplam);
}