import 'dart:io';

void main() {
  
List<int> girilenSayis = [];
Set<int> benzersizSayis = {};
int sum = 0;

  for (int i = 1; i <= 5; i++) {
    stdout.write("$i. sayıyı giriniz: ");
    int sayi = int.parse(stdin.readLineSync()!);
    girilenSayis.add(sayi);
    benzersizSayis.add(sayi);
    sum =sum+ sayi; 
  }

  int tekrar = girilenSayis.length - benzersizSayis.length;

  if (tekrar > 0) {
    print(" $tekrar kere aynı sayıyı girdiniz.");
  }

  print("Toplam: $sum");
}
 

