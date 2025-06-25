import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  int HedefNumber = random.nextInt(11);

  print("Bir sayı tuttum. 0 ile 10 arasında, hadi tahmin et!");
  print("Toplam 3 hakkın var. Başarılar!");

  for (int deneme = 3; deneme > 0; deneme--) {
    stdout.write("Tahmininiz: ");
    int? tahmin = int.tryParse(stdin.readLineSync()!);

    if (tahmin == null || tahmin<11) {
      print("Geçerli bir sayı girin.");
      continue;
    }

    if (tahmin == HedefNumber) {
      print("Tebrikler, doğru tahmin Sayı: $HedefNumber");
      return;
    } else if (tahmin < HedefNumber) {
      print("Arttır Kalan hak: ${deneme - 1}");
    } else {
      print("Azalt Kalan hak: ${deneme - 1}");
    }
  }

  print("Hakkın bitti! Maalesef bilemedin. Doğru sayı: $HedefNumber");





List<String> meyveler = <String>[];
meyveler.add("Muz");
meyveler.add("Portakal");
meyveler.add("Mandalina");

String meyve =meyveler[2];
print(meyve);

List<int> rakamlar =[0,1,2,3,4,5,6,7,8,9];
print(rakamlar[6]);
print(rakamlar.isEmpty);


List<double> fiyatlar =[2.7, 3.02,5.4,7,9.5];
print(fiyatlar.length);

List<String> city =["İstanbul", "Ankara", "İzmir"];
print(city.last);

List<String>names =["Bilal","Nergiz","Deniz"];
print(names.contains("Nergiz"));

}