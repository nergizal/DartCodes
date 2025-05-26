import 'dart:io';
void main() {

  List<Map<String, dynamic>> arabalar;

  print("İkinci El Oto Takip Uygulaması") ;


  while (true) {
    stdout.write("Marka: ");
    String marka = stdin.readLineSync()!;
    stdout.write("Model: ");
    String model = stdin.readLineSync()!;
    stdout.write("Yıl: ");
    int yil = int.parse(stdin.readLineSync()!);
    stdout.write("KM: ");
    int km = int.parse(stdin.readLineSync()!);


    Map<String, dynamic> araba = {
      'marka': marka,
      'model': model,
      'yil': yil,
      'km': km,
    };

   
   stdout.write("Araç eklemeye devam edilsin mi? Eklemek isterseniz e'ye çıkmak isterseniz h'ye basın: ");
    String cevap = stdin.readLineSync()!;
    if (cevap=="e"|| cevap== "E") {
      break;
    }
    
    }
    }