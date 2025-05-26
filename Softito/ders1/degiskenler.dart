/*
* Sabitler: final ya da const
* const: Hafıza oluşturduğumuz an yer eder
* final: değişken oluşturulduktan sonra kod çalıştırıldığında hafıza da yer eder
* const sınıf içinde kullanılmaz
Sabit kullanmak hafıza yönetimini rahatlatır.
Çünkü hafızada sabit bir yer ayrılır ve değişmeyeceği için yeni bir değer beklemez
*/
import 'dart:io';

void main(List<String>args){


final String mesaj = "Merhaba";
const x =20;
const double y = 20.9;


String  name = "Nergiz";
var age = 20;
print("Merhaba benim adım $name yaşım $age");

int myBestNumber = 5;
print(myBestNumber);

int sayi1 = 17;
int sayi2 = 18;

print("$sayi1 + $sayi2 = ${sayi1 + sayi2}");


print("Kazaklar \$50");

print('Mehmet\in kalemleri');

var kenar1, kenar2, kenar3;

kenar1= 17;
kenar2= 9;
kenar3=10;

var cevre =kenar1 + kenar2 + kenar3;
print("Kenar uzunlukları $kenar1, $kenar2, $kenar3 olan üçgenin çevresi: $cevre'dir",
);

//çember alanı
var yaricap =6;
final pi = 3.14;
var alan = pi*yaricap *yaricap;
print("Çember Alani");
print(alan);

//kinetik enerji
var m = 10;
var V =8;
var kinetik_energy = 1/2 * m * V;
print("Kinetik enerji");
print(kinetik_energy);

int i=42;
double d = 42.45;

int sonuc =d.toInt();
print(sonuc);

double sonuc2= i.toDouble();
print(sonuc2);

 /* 1)sayısaldan sayısala dönüşüm
  * 2)sayısaldan metine dönüştürmek
    3)metinden sayısala dönüştürme
*/
    String value1= "52";
    String value2= "34.67";

    int s1 = int.parse(value1);
    print(s1);

    double s2 = double.parse(value2);
    print(s2);

stdout.write("Lütfen 1.sayıyı giriniz");
 
  String? text1 = stdin.readLineSync(); // ? bu değişken null boş olabilir

  double number1 = double.parse(text1!); // ! eminim demektir.

  print("lütfen 2.sayıyı giriniz");

  String ? text2 =stdin.readLineSync();

  double number2 =double.parse(text2!);

  print("Girdiğiniz ${number1.toInt()} ve ${number2.toInt()} sayilarının toplamı:${number1 +number2} ' dir");






}