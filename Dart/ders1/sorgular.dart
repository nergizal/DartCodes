/*
import 'dart:io';
void main(List<String>args){

  /* bool stateOne = 12 > 5;

  bool stateTwo = "nergiz"== "nergiz";

  print(stateOne || stateTwo);
  */
/*
  //1.soru
   print(' Hangi sayı daha büyüktür oyununa hoşgeldiniz');

   print('Birinci sayıyı girin:');
   int sayi1 = int.parse(stdin.readLineSync()!);
   
   print('İkinci sayıyı girin:');
  int sayi2 = int.parse(stdin.readLineSync()!);
  bool sonuc = sayi1 > sayi2;
 print('//"Girdiğiniz $sayi1 sayısı ile $sayi2 sayısının sonucu $sonuc"');





  //2.soru
  print('Lütfen işlem yapılacak sayıyı giriniz:');
  int digit1 = int.parse(stdin.readLineSync()!);

  print('Lütfen karşılaştırılacak sayıyı girin:');
  int digit2 = int.parse(stdin.readLineSync()!);

  int islemSonucu = (digit1 * 2) + 5;

  bool sonuclar = islemSonucu > digit2;



  print('Girdiğiniz $digit1 sayısının 2 katının 5 fazlası $islemSonucu ile $digit2 karşılaştırıldığında:');
  print(sonuclar);

*/
/*
int age=20;

if(age>18){
  print("Sen reşit bir insansın");
} else{
  print("Sen reşit değilsin");
}

print('Lütfen yaşınızı giriniz:');
 



int age1 = int.parse(stdin.readLineSync()!);
  if (age > 18) {
    print("Yes,you can get drive license");
  } else {
    print("No, you cannot get drive license. Your age is not enough");
  }

*/










/*


print('Hangi sayı daha büyüktür oyununa hoşgeldiniz');
stdout.write('Birinci sayıyı giriniz: ');
  int? sayi1 = int.tryParse(stdin.readLineSync()!);

  stdout.write('İkinci sayıyı giriniz: ');
  int? sayi2 = int.tryParse(stdin.readLineSync()!);

  if (sayi1 == null || sayi2 == null) {
    print('Geçerli bir sayı girmediniz.');
    return;
  }

  if (sayi1 > sayi2) {
    print('Girdiğiniz $sayi1 sayısı ikinci girdiğiniz $sayi2 sayısından büyüktür.');
  } else if (sayi1 < sayi2) {
    print('Girdiğiniz $sayi1 sayısı ikinci girdiğiniz $sayi2 sayısından küçüktür.');
  } else {
    print('Girdiğiniz iki sayı ($sayi1 ve $sayi2) birbirine eşittir.');
  }


  print("Hangi sayı daha büyüktür oyununa hoşgeldiniz");
  print("Please give the first number");
  int number1 = int.parse(stdin.readLineSync()!);

  print("Please give the second number");
  int number2 = int.parse(stdin.readLineSync()!);

  if (number1 > number2) {
    print("The first number $number1 is biggger than second number $number2");
  }else{
    print("The second number $number2 is biggger than first number $number1");
  }


  print("Hangi sayı büyüktür oyununa hoşgeldiniz");
  stdout.write("Birinci sayu giriniz");

  String ? numberOneText = stdin.readLineSync();

  int numberOne = int.parse(numberOneText !);
  stdout.write("İkinci sayı giriniz");

  String? numberTwoText =stdin.readLineSync();

  int numberTwo =int.parse(numberTwoText!);

  if(numberOne > numberTwo){
    print("$numberOne sayısı  $numberTwo sayısından büyüktür");

  }else {
    print("$numberTwo sayısı $numberOne
     sayısından büyüktür");
  }
*/

/*
stdout.write("Lütfen işlem yapılacak sayıyı giriniz: ");
  int sayi1 = int.parse(stdin.readLineSync()!);

stdout.write("Lütfen karşılaştırılacak sayıyı girin: ");
  int sayi2 = int.parse(stdin.readLineSync()!);

  int sonuc = sayi1 * 2 + 5;

  String karsilastirma;
  if (sonuc > sayi2) {
    karsilastirma = "büyüktür";
  } else if (sonuc < sayi2) {
    karsilastirma = "küçüktür";
  } else {
    karsilastirma = "eşittir";

  }
 print("Girdiğiniz $sayi1 sayısının 2 katının 5 fazlası $sonuc ile "
        "$sayi2 karşılaştırıldığında ($karsilastirma).");

*/

print("lütfen ilk sayiyi giriniz");
  int sayi1 = int.parse(stdin.readLineSync()!);

  print("lütfen ikinci sayiyi giriniz");
  int sayi2 = int.parse(stdin.readLineSync()!);

  int sayi2_1 = sayi1 * 2 + 5;
  print("yeni dönüştürülen sayi:$sayi2_1");

  if (sayi2_1 > sayi2) {
    print("girdiğiniz $sayi2_1 sayısı , $sayi2 sayısından büyüktür");
  } else {
    print("girdiğiniz $sayi2 sayısı , $sayi2_1 sayısından büyüktür");
  }





print("Sisteme Hoşgeldiniz..."); 
stdout.write("İşleme girecek sayıyı yazınız: "); 
int firstNumber = int.parse(stdin.readLineSync()!); 
int changeNumber = firstNumber * 2 + 5; 
stdout.write("Karşılaştırmaya girecek sayıyı yazınız: "); 
int secondNumber = int.parse(stdin.readLineSync()!); 
if (changeNumber > secondNumber) { 
print( 
"Girilen birinci sayının değişmiş hali olan $changeNumber ikinci girilen sayı olan $secondNumber' dan büyüktür", I 
 
); 
} else { 
print( 
"Girilen birinci sayının değişmiş hali olan $changeNumber ikinci girilen sayı olan $secondNumber dan küçüktür",  
); 
} 

String adminName = "softito";

stdout.write ("Lütfen sistem yöneticisi kullancı adını giriniz ");

String ? myUsername =stdin.readLineSync();

if(myUsername==adminName){
  print("Sisteme başarıyla giriş yaptınız");}
  else{
    print("Hata, yanlış kullanıcı aıd");
  }

  String userName = "Nergiz";

  String pass = "123456";

  stdout.write("Lütfen kullanıcı adınızı girin");
  
  String ? inputUsername= stdin.readLineSync();
  stdout.write("Lütfen şiferenizi giriniz:");

  String ? inputUserPass = stdin.readLineSync();
  if(userName == inputUsername &&pass == inputUserPass){
    print("Sisteme giriş başarılı");
  } else {
    print("Hata..");
  }

  //Kullanıcının girdiği sayının tek mi çift mi olduğunu yazan sayı

  stdout.write("Lütfen bir sayı giriniz");
  
  int myNumber=int.parse(stdin.readLineSync()!);

  if(myNumber %2==0){
    print("Girdiğiniz $myNumber çift bir sayıdır");
  }else{
    print("Girdiğiniz $myNumber  tek bir sayıdır");
  }
   int digit =0;
   if(digit>0){
    print("$digit sayısı pozitif bir sayıdır");
   }else if (digit<0){
print("$digit sayısı negatif bir sayıdır");
   }else {
    print("$digit'in bir işareti yoktur.");
   }




// Kullanıcının girdiği değer okunuyor ve tam sayı (int) türüne dönüştürülüyor
  int inputNumber = int.parse(stdin.readLineSync()!);

  // Kontrol yapısı ile sayının işareti belirleniyor
  if (inputNumber == 0) {
    // Sayı 0 ise işaret yoktur
    print("Girdiğiniz $inputNumber sayısının işareti yoktur..");
  } else if (inputNumber > 0) {
    // Sayı 0'dan büyükse pozitiftir
    print("Girdiğiniz $inputNumber sayısının işareti pozitiftir");
  } else {
    // Sayı 0'dan küçükse negatiftir
    print("Girdiğiniz $inputNumber sayısının işareti negatiftir");
  }

  // Kullanıcıdan birinci sayı isteniyor
  stdout.write("Lütfen birinci sayıyı giriniz: ");
  double a = double.parse(stdin.readLineSync()!);

  // Kullanıcıdan ikinci sayı isteniyor
  stdout.write("Lütfen ikinci sayıyı giriniz: ");
  double b = double.parse(stdin.readLineSync()!);

  // İşlem seçenekleri ekrana yazdırılıyor
  print(
    "Toplama için: 1 \n"
    "Çıkarma için: 2 \n"
    "Çarpma için: 3 \n"
    "Bölme için: 4 \n"
    "Mod Alma için: 5 \n"
    "Lütfen bir tuşa basınız: "
  );



  String? secim = stdin.readLineSync();

  
  if (secim == "1") {
    print("$a + $b = ${a + b}"); 
    
  } else if (secim == "2") {
    print("$a - $b = ${a - b}");
  } else if (secim == "3") {
    print("$a x $b = ${a * b}"); 
  } else if (secim == "4") {
  
    if (b == 0) {
      print("Bir sayı 0'a bölünemez!");
    } else {
      print("$a / $b = ${a / b}"); 
    }
  } else if (secim == "5") {
   
    print("$a % $b = ${a % b}"); 
  } else {
    print("Geçersiz bir seçim yaptınız!"); 
   }


  stdout.write("Lütfen birinci sayıyı giriniz: ");
  double a = double.parse(stdin.readLineSync()!);

  stdout.write("Lütfen ikinci sayıyı giriniz: ");
  double b = double.parse(stdin.readLineSync()!);

  print(
    "Toplama için : 1 \n"
    "Çıkarma için : 2 \n"
    "Çarpma için : 3 \n"
    "Bölme için : 4 \n"
    "Mod Alma için : 5 \n"
    "tuşuna basınız "
  );

  

  if (secim == "1") {
    print("$a + $b = ${a + b}");
  } else if (secim == "2") {
    print("$a - $b = ${a - b}");
  } else if (secim == "3") {
    print("$a x $b = ${a * b}");
  } else if (secim == "4") {
    print("$a : $b = ${a / b}");
  } else if (secim == "5") {
    print("$a % $b = ${a % b}");
  } else {
    print("Yanlış bir seçim yaptınız programdan çıkılıyor...");
  }


  
}





*/