import 'dart:io';

void main(List<String> args) {
  /*

  -arrow fonksiyon: kullandığımız bu ok return anlamına gelir
  int toplama(int a, int b) => a + b;
  print(toplama(5, 9));
  -ama bu işlem tek satırlık return için çalışır çok satırlık işlem varsa parantez kullanmalısınız



  //Kullanıcının girdiği bilgilere göre girişi kontrol eden
  1.adım: 
  Kullanıcıdan verileri aldık ( userName ve pass)
  Giriş kontrol metodu tanımladık ve bilgileri kontrol ettik


  Main de çağır : genelIslemler();

void genelIslemler() {
  while (true) {
    stdout.write("Lütfen kullanıcı adınızı yazınız: ");
    String? userName = stdin.readLineSync();
    stdout.write("Lütfen şifrenizi giriniz: ");
    String? pass = stdin.readLineSync();
    print(girisKontrol(userName!, pass!));
  }
}

String girisKontrol(String username, String pass) =>
    username == "Admin" && pass == "123456"
        ? "Giriş başarılı"
        : "Başarısız giriş";



  //Kullanıcının girdiği bilgilere göre ana ekrana yönlendiren bir program yazalım
//girişi kontrol eden (değer döndüren bir fonksiyon)
//anasayfayı kontrol eden (Giriş başarılı olsun ki ana sayfa açılsın)

2.adım:
Anasayfa adında bir fonksiyon oluşturduk ona giriskontrol bool değişkenini gönderdik ve içerisinde if ile giriş kontrolün doğru ya da yanlış olmasına göre ana sayfa ve ya hata mesajı gönderdik
void genelIslemler() {
  while (true) {
    stdout.write("Lütfen kullanıcı adınızı giriniz: ");
    String? name = stdin.readLineSync();
    stdout.write("Lütfen şifrenizi giriniz: ");
    String? password = stdin.readLineSync();
    bool isEnter = girisKontrol(name!, password!); //true, false
    anaSayfa(isEnter); //true false
  }
}
bool girisKontrol(String userName, String pass) =>
    userName == "Admin" && pass == "123456" ? true : false;
/*
bool girisKontrol(String userName, String pass){
  return userName == "Admin" && pass == "123456" ? true : false;
}
*/
void anaSayfa(bool girisDogrumu) {
  if (girisDogrumu) {
    print("Anasayfaya yönlendiriliyorsunuz....");
  } else {
    print("Hatalı giriş");
  }
} 


3.adım: 
Anasayfa içinde kullanıcıdan bir seçim yapmasını istedik o seçimi if ile kontrol edip bankacılık ve ya kredi kartı seçimine göre bu adlarda oluşturduğumuz fonksiyonlara gönderdik ve iki tane boş fonksiyon oluşturduk

  while (true) {
    stdout.write("Lütfen kullanıcı adınızı giriniz: ");
    String? myUserName = stdin.readLineSync();
    stdout.write("Lütfen şifrenizi giriniz: ");
    String? myPass = stdin.readLineSync();
    bool girisYapildiMi = girisKontrol(myUserName!, myPass!);
    anaSayfa(girisYapildiMi);
  }
}

bool girisKontrol(String userName, String pass) {
  return userName == "Admin" && pass == "123456" ? true : false;
}

void anaSayfa(bool girisKontrol) {
  if (girisKontrol == true) {
    stdout.write(
      "Bankacılık işlemleri için 1'e kredi kartı işlemleri için 2 ye basınız: ",
    );
    String? secim = stdin.readLineSync();

    if (secim == "1") {
      bankacilikIslemleri();
    } else if (secim == "2") {
      krediKartiIslemleri();
    }

  } else {
    print("Hatalı giriş...");
  }
}


void bankacilikIslemleri() {
  print("Bankacılık işlemlerine yönlendiriliyorsunuz....");
}

void krediKartiIslemleri() {
  print("Kredi kartı işlemlerine yönlendiriliyorsunuz...");
}


4.Adım: 
genel işlemlerde aldığımız kullanıcı adını bankacılık işlemleri ekranında kullanmak için Anasayfa fonskiyonun userName parametresi ekledik. Genel işlemlerde anasayfayı çağırdığımız yerde parametre olarak genel işlemlerdeki kullanıcı adını gönderdik. ü

daha sonra bunu bankacılık işlemlerine gönderebilmek için bankacılık işlemleri fonksiyonuna kullanıcı adı adında bir parametre ekledik ve anasayfa da bankacılık işlemlerini çağırdığımız yerde anasayfaya gelen kullanıcı adını verdik.




void genelIslemler() {
  while (true) {
    stdout.write("Lütfen kullanıcı adınızı giriniz: ");
    String? myUserName = stdin.readLineSync();
    stdout.write("Lütfen şifrenizi giriniz: ");
    String? myPass = stdin.readLineSync();
    bool girisYapildiMi = girisKontrol(myUserName!, myPass!);
    anaSayfa(girisYapildiMi, myUserName);
  }
}

bool girisKontrol(String userName, String pass) {
  return userName == "Admin" && pass == "123456" ? true : false;
}

void anaSayfa(bool girisKontrol, String userName) {
  if (girisKontrol == true) {
    stdout.write(
      "Bankacılık işlemleri için 1'e kredi kartı işlemleri için 2 ye basınız: ",
    );
    String? secim = stdin.readLineSync();
    //----
    if (secim == "1") {
      bankacilikIslemleri(userName);
    } else if (secim == "2") {
      krediKartiIslemleri();
    }
    //---
  } else {
    print("Hatalı giriş...");
  }
}

//-----
void bankacilikIslemleri(String userName) {
  print("Bankacılık işlemlerine hoşgeldin $userName");
}

void krediKartiIslemleri() {
  print("Kredi kartı işlemlerine yönlendiriliyorsunuz...");
}

5.adım: bankacılık işlemleri fonksiyonuna bir menü tanımladım ve burdan bir seçim üzerüne if kullanarak para çekme v.b şeklinde sekmelere yönlendirme yaptım. 


void bankacilikIslemleri(String userName) {
  print("Bankacılık işlemlerine hoşgeldin $userName");
  //--
  stdout.write(
    "Hangi işlemi yapmak istiyorsunuz : Para yatırmak için 1' e havale yapmak için 2'ye, kredi çekmek için 3' e basınız: ",
  );
  String? secim = stdin.readLineSync();
  if (secim == "1") {
    print("Para yatırmak");
  } else if (secim == "2") {
    print("Havale yap");
  } else if (secim == "3") {
    print("Kredi çek");
  }
}


Son hali:

void genelIslemler() {
  while (true) {
    stdout.write("Lütfen kullanıcı adınızı giriniz: ");
    String? myUserName = stdin.readLineSync();
    stdout.write("Lütfen şifrenizi giriniz: ");
    String? myPass = stdin.readLineSync();
    bool girisYapildiMi = girisKontrol(myUserName!, myPass!);
    anaSayfa(girisYapildiMi, myUserName);
  }
}

bool girisKontrol(String userName, String pass) {
  return userName == "Admin" && pass == "123456" ? true : false;
}

void anaSayfa(bool girisKontrol, String userName) {
  if (girisKontrol == true) {
    stdout.write(
      "Bankacılık işlemleri için 1'e\nkredi kartı işlemleri için 2 ye basınız: ",
    );
    String? secim = stdin.readLineSync();
    //----
    if (secim == "1") {
      bankacilikIslemleri(userName);
    } else if (secim == "2") {
      krediKartiIslemleri(userName);
    }
    //---
  } else {
    print("Hatalı giriş...");
  }
}

void krediKartiIslemleri(String userName) {
  //
  print("Kredi kartı işlemlerine hoşgeldiniz $userName");
  stdout.write(
    "Hangi işlemi yapmak istiyorsunuz:\nBorç ödeme için 1'e,\nşifre değiştirmek için 2'ye\n,yeni kart talep etmek için 3\nlimit yükseltmek için 4'e basınız: ",
  );
  String? secim = stdin.readLineSync();
  if (secim == "1") {
    print("Borç ödendi");
  } else if (secim == "2") {
    print("Şifre değişti");
  } else if (secim == "3") {
    print("Kart talebiniz alındı");
  } else if (secim == "4") {
    print("Limitiniz yükseldi");
  } else {
    print("Lütfen geçerli bir seçim yapın");
    //burda döngü içi döngü çıkışı eklicem
  }
}
void bankacilikIslemleri(String userName) {
  print("Bankacılık işlemlerine hoşgeldin $userName");
  //--
  stdout.write(
    "Hangi işlemi yapmak istiyorsunuz :\n Para yatırmak için 1' e,\n havale yapmak için 2'ye,\n kredi çekmek için 3' e basınız: ",
  );
  String? secim = stdin.readLineSync();
  if (secim == "1") {
    print("Para yatırmak");
  } else if (secim == "2") {
    print("Havale yap");
  } else if (secim == "3") {
    print("Kredi çek");
  }else {
    print("Lütfen geçerli bir seçim yapın");
    //burda döngü içi döngü çıkışı eklicem
  }
}



  */
  genelIslemler();
}

void genelIslemler() {
  while (true) {
    stdout.write("Lütfen kullanıcı adınızı giriniz: ");
    String? myUserName = stdin.readLineSync();
    stdout.write("Lütfen şifrenizi giriniz: ");
    String? myPass = stdin.readLineSync();
    bool girisYapildiMi = girisKontrol(myUserName!, myPass!);
    anaSayfa(girisYapildiMi, myUserName);
  }
}

bool girisKontrol(String userName, String pass) {
  return userName == "Admin" && pass == "123456" ? true : false;
}

void anaSayfa(bool girisKontrol, String userName) {
  if (girisKontrol == true) {
    stdout.write(
      "Bankacılık işlemleri için 1'e\nkredi kartı işlemleri için 2 ye basınız: ",
    );
    String? secim = stdin.readLineSync();
    //----
    if (secim == "1") {
      bankacilikIslemleri(userName);
    } else if (secim == "2") {
      krediKartiIslemleri(userName);
    }
    //---
  } else {
    print("Hatalı giriş...");
  }
}

void krediKartiIslemleri(String userName) {
  //
  print("Kredi kartı işlemlerine hoşgeldiniz $userName");
  stdout.write(
    "Hangi işlemi yapmak istiyorsunuz:\nBorç ödeme için 1'e,\nşifre değiştirmek için 2'ye\n,yeni kart talep etmek için 3\nlimit yükseltmek için 4'e basınız: ",
  );
  String? secim = stdin.readLineSync();
  if (secim == "1") {
    print("Borç ödendi");
  } else if (secim == "2") {
    print("Şifre değişti");
  } else if (secim == "3") {
    print("Kart talebiniz alındı");
  } else if (secim == "4") {
    print("Limitiniz yükseldi");
  } else {
    print("Lütfen geçerli bir seçim yapın");
    //burda döngü içi döngü çıkışı eklicem
  }
}

void bankacilikIslemleri(String userName) {
  print("Bankacılık işlemlerine hoşgeldin $userName");
  //--
  stdout.write(
    "Hangi işlemi yapmak istiyorsunuz :\n Para yatırmak için 1' e,\n havale yapmak için 2'ye,\n kredi çekmek için 3' e basınız: ",
  );
  String? secim = stdin.readLineSync();
  if (secim == "1") {
    print("Para yatırmak");
  } else if (secim == "2") {
    print("Havale yap");
  } else if (secim == "3") {
    print("Kredi çek");
  } else {
    print("Lütfen geçerli bir seçim yapın");
    //burda döngü içi döngü çıkışı eklicem
  }
}
