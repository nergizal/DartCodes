import 'dart:io';
import 'dart:math';
void main(List<String>args){
/*
  List<int> sayilars = List.filled(7,5);
  sayilars[0] =9;
  sayilars[1]=11;
  sayilars[2]= 78;
  print(sayilars);

  

  List<String> meyveler = List.filled(3,"");
  meyveler[0]="Elma";
  meyveler[1]="Çilek";
  meyveler[2]="Kiraz";
  print(meyveler);
  print(meyveler.length);
  meyveler.length =8;//hata verir çünkü eleman sayısı sabittir değiştirilemez

List<int> numaralar = List.filled(4,0);
numaralar[0]=7;
numaralar[1]=11;
numaralar[2]=5;
numaralar[3]=18;
print(numaralar);
numaralar[4] =90;//eleman sayısının aştığı için hata alırız

//tostring() metodu ile değerleri stringe dönüştürüyorduk.
List<String> isimler = List.filled(2,"");
isimler[0]=5.toString();
isimler[1] = "Nergiz";
print(isimler);



List karisik = List.filled(4,0);
karisik[0] = "İstanbul";
karisik[1] = 14;
karisik[2] = 2.75;
karisik[3] = true;
print(karisik);

/*
List<dynamic> karisikk = List<int>.filled(3,5);
karisikk[0]= "bilal";
karisikk[1] = 9;
karisikk[2] =true;
print(karisikk); //hata verir
*/


List<dynamic> karisikk = List<dynamic>.filled(3,5);
karisikk[0]= "bilal";
karisikk[1] = 9;
karisikk[2] =true;
print(karisikk); //hata verir


  
List<int> sayilar = List.filled(3,0);
sayilar[0]=9;
sayilar[1]=22;
sayilar[2]=13;


print("İlk halini: $sayilar");

for(int i=0; i<sayilar.length;i++){
  print("${i+1}.eleman: ${sayilar[i]}");
}

List<String> sehirler = List.filled(5,"İstanbul");
sehirler[0] ="Van";
sehirler[1] ="Muğla";
sehirler[2] ="Amasya";
sehirler[3] ="Bolu";

for(String sehir in sehirler){
  print(sehir);
}

List<int> sayilarn =[];
sayilarn.add(5);
sayilarn.add(17);
sayilarn.add(43);
print(sayilarn);

print(sayilarn.length);
*/

/*
List<int>sayilar =[1,2,3];
print("Liste 1 : $sayilar");
print("************");
sayilar.add(45);
print("liste 2: $sayilar");

/*
List<int> myNumber = List.filled();

print(myNumber.length);
print(myNumber);
print("**************");
myNumber.add(58);
print(myNumber);
print(myNumber.length);

*/

List<String> cities = List.empty(growable: true);
cities.add("Nevşehir");
cities.add("Hakkarı");
print(cities);
print(cities.length);


List<int> numaralar =[5,9,18,56,49];

for(int sayi in numaralar){
  print(sayi);
}


List<String> programlamaDilleri =[
  "Java", "Dart", "C#", "Python","Javascript","Swift","Kotlin", "Php"];

print(programlamaDilleri.isEmpty);

}
*/


List<int> numberBest =[5,9,17,25,38,59];
print(numberBest);
numberBest.clear();
print(numberBest);
print(numberBest.contains(56));


List<String> product =["Kazak", "Gömlek","Pantolon"];

if(product.contains("Tshirt")){
  print("Evet elimizde ürün var");
}else{
  print("Maalesef istediğiniz ürün tükenmiş");
}

List<String> yemekler =[
  "Karnıyarık",
  "Sarma",
  "Su böreği",
  "Sigara böreği"
  "Tavuklu Mantar sote",
];
print(yemekler.elementAt(1));


List<int> sayilar =[5,9,17,36,58,99,58];
print(sayilar.indexOf(58));

if(sayilar.lastIndexOf(99)==-1){
  print("Girdiğiniz eleman hatalı");
}else{
  print(sayilar.indexOf(99));
}
List<String> renkler = ["Sarı", "Mavi","Pembe", "Yeşil"];
print(renkler);
print("**********");
renkler.shuffle();
print(renkler); //direkt etkiler.



Set<String> isimler =Set();
isimler.add("Nergiz");
isimler.add("Deniz");
isimler.add("Ahmet");
isimler.add("Mehmet");
isimler.add("Bilal");
isimler.add("Mehmet");
isimler.add("Ayşe");

for(String isim in isimler){
  print(isim);
}

Set<String> isimlers ={"Zuhal","Ayşe","Seyfi"};
if(isimlers.contains("Zuhal")){
  print("Girdiğiniz isim var");
}else{
  print("Hatalı isim");
}


Set<String> sehirler = Set();
sehirler.add("kastamonu");
sehirler.add("Sakarya");
sehirler.add("Elazığ");
sehirler.add("Sivas");

if(sehirler.remove("Sivas")){
  print("Girdiğiniz veri başarıyla girildi");
}else {
  print("Hatalı işlem");
}

//Farklı bir set tanımlama yöntemi:
Set<int> numaralar = Set. from([1,5,7,9,7,1,8,1,1,9,5]);

for(int numara in numaralar){
  print(numara);

}

Set<int> myNumber= Set();
List<int> sayilars =[0,1,2,3,4,5,4,3,2,1,0];
myNumber.addAll(sayilars);

for(int no in myNumber){
  print(no);
}

//Bir listedeki ürünleri ekrana yazdıralım
List<String> products = ["Buzdolabı ", "Çamaşır makinesi","Fırn","Ütü"];
for(String p in products){
  print(p);
}

//Bir kullanıcıdan 5 tane sayı alıp listeye ekleyelim
List<int> sayilark =[];
for(int i=1; i<=5; i++){
  stdout.write("$i. sayıyı giriniz: ");
  int sayi =int.parse(stdin.readLineSync()!);
  sayilark.add(sayi);

}

print("****** Girdiğiniz sayılar****");
for(int s in sayilark){
  print(s);
}

//Kullanıcıdan 5 tane meyve alıp listeleyellim
List<String> meyveler =[];
for(int i=1; i<=5; i++){
  stdout.write("$i. meyveyi giriniz ");
  String? meyve =stdin.readLineSync();
  meyveler.add(meyve!);
}
print("****** Girdiğiniz meyvele********");
for(String m in meyveler){
  print(m);
}

// Sabit bir liste 5 sayı ekleyip ekrana yazdırın
List<int> numbers =List.filled(5,0);
for(int i=0; i<=4; i++){
  stdout.write("${i+1}. sayıyı giriniz");
  int sayi =int.parse(stdin.readLineSync()!);
  numbers[i]= sayi;
}
print("****** Girilen Sayılar*****");
for(int n in numbers){
  print(n);
}


//10 tane random sayı oluşturup listeye ekleyelim

List<int> myNumbern =[];
Random r = Random();
for(int i=0; i<=9; i++){
  int randomSayi = r.nextInt(100) + 1;
  myNumber.add(randomSayi);
}
int a =0;
for(int s in myNumbern){
  a++;
  print("$a. sayı: $s");
}


//Kullanıcının girdiği 10 tane sayının çift ya da tek olduğunu ekrana yazdıralım
List<int> ciftSayilar =[];
List<int> tekSayilar =[];

for(int i=0; i<=9; i++){
  stdout.write("lütfen ${i+1}.sayıyı giriniz");
  int sayi = int.parse(stdin.readLineSync()!);
  if(sayi %2==0){
    ciftSayilar.add(sayi);
  }else{
    tekSayilar.add(sayi);
  }
}
print("****** Girilen çift sayılar*****");
int sayac =0;
print("Girdiğiniz 10 sayıdan ${ciftSayilar.length} tanesi çifttir");
for(int cift in ciftSayilar){
  sayac++;
  print("$sayac.sayı : $cift");
}
print("*******");




//kullanıcının girdiği 8 sayıdan negatif ve nötr olanları yazdırın
List<int> pozSay =[];
List<int> negSay =[];
List<int> notrSay =[];

for(int i=0; i<=7;i++){
  stdout.write("lütfen ${i+1}, sayıyı giriniz");
  int sayi =int.parse(stdin.readLineSync()!);
  if(sayi>0){
    pozSay.add(sayi);
  }else if (sayi<0){
    negSay.add(sayi);
  }else{
    notrSay.add(sayi);
  }
}
print("**********Girdiğiniz pozitif sayıları *****");
int pozSayac =0;
print("");
for(int s in pozSay){
  pozSayac ++;
  print("");
}

print("****** Girdiğiniz negatif sayılar*****");
int negSayac =0;
print("Girdiğiniz 8 sayıdan ${negSay.length} tanesi pozitif sayıdır ");
for(int s in negSay){
  negSayac++;
  print("$negSayac.sayı: $s");
}

 print("**********GİRDİĞİNİZ NOTR SAYİLAR");
  int notrsayac = 0;
    print("Girdiğiniz sekiz sayidan ${notrSay.length} tanesi nötr  sayidir");

  for (int s in pozSay) {
     notrsayac++;
    print("$notrsayac.sayi : $s");
  }
}





