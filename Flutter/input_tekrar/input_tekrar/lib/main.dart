import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyProject());
  }
}

class MyProject extends StatelessWidget {
  const MyProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBar(
          title: Text("Input Tekrar"),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
      ),
      body: TextFormFieldKullanimi(),
    );
  }
}

class TextFieldWidgetKullanimi extends StatefulWidget {
  const TextFieldWidgetKullanimi({super.key});

  @override
  State<TextFieldWidgetKullanimi> createState() =>
      _TextFieldWidgetKullanimiState();
}

class _TextFieldWidgetKullanimiState extends State<TextFieldWidgetKullanimi> {
  late TextEditingController _emailController;
  late FocusNode _focusNode;
  int maxLineCount = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailController = TextEditingController();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {
        maxLineCount = _focusNode.hasFocus ? 3 : 1;
      });
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: TextField(
            focusNode: _focusNode,
            controller: _emailController,
            maxLines: maxLineCount,
            //Açılacak olan klavye türü
            keyboardType: TextInputType.emailAddress,
            //Klavyedeki(Android) ana butonunun ne olacağı
            textInputAction: TextInputAction.done,

            //Seçili gelme olayı
            autofocus: true,
            //Satır sayısı
            //maxLines: maxLineCount,
            //Girilecek karakter sayısı (TC)

            //İmleç rengi
            cursorColor: Colors.red,
            decoration: InputDecoration(
              //Kayan bilgi yazısı
              labelText: "Username",
              //İpucu
              hintText: "Kullanıcı adınızı giriniz",
              icon: Icon(Icons.add),
              //Sol tarafa eklenen icon
              prefix: Icon(Icons.person),
              //Sağ taraf iconu
              suffixIcon: Icon(Icons.cancel),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              //Arka plan rengi verme izni
              filled: true,
              fillColor: Colors.green.shade300,
            ),
            //Klavye ile yapılan her değişikliği algılar
            onChanged: (String gelenDeger) {},
            //Klavyedeki done tuşuna basınca çalışır ya da fiel dan çıkınca
            onSubmitted: (String gelenDeger) {},
          ),
        ),
        TextField(),
      ],
    );
  }
}

class TextFormFieldKullanimi extends StatefulWidget {
  const TextFormFieldKullanimi({super.key});

  @override
  State<TextFormFieldKullanimi> createState() => _TextFormFieldKullanimiState();
}

class _TextFormFieldKullanimiState extends State<TextFormFieldKullanimi> {
  //başka bi yerden ulaşmak istemediğimiz için _ böyle private
  late final String _email, _password, _userName;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Form(
          key: _formKey,
          //validate işlemini ne zaman çalıştıracağını belirler
          autovalidateMode: AutovalidateMode.onUserInteraction,

          child: Column(
            children: [
              //Texteditingcontroller'a ihtiyaç duymazz. çünkü onsaved vardır.
              TextFormField(
                onSaved: (gelenUserName) {
                  _userName = gelenUserName!;
                },
                //varsayılan değeri tanımlar
                //initialValue: "nergizalici",
                decoration: InputDecoration(
                  //hata mesajlarının rengini değiştirir.
                  errorStyle: TextStyle(color: Colors.red),
                  labelText: "Kullanıcı Adı",
                  hintText: "Username",
                  border: OutlineInputBorder(),
                ),

                validator: (girilenUserName) {
                  if (girilenUserName!.isEmpty) {
                    return "Kullanıcı adı boş olamaz";
                  }

                  if (girilenUserName!.length < 4) {
                    return "4 karakterden az olamaz";
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                onSaved: (gelenMail) {
                  _email = gelenMail!;
                },
                //varsayılan değeri tanımlar
                //initialValue: "nergizalici",
                decoration: InputDecoration(
                  //hata mesajlarının rengini değiştirir.
                  errorStyle: TextStyle(color: Colors.red),
                  labelText: "Email",
                  hintText: "Email",
                  border: OutlineInputBorder(),
                ),
                validator: (girilenEmail) {
                  if (!EmailValidator.validate(girilenEmail!)) {
                    return "Geçerli bir e-mail giriniz";
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                onSaved: (girilenSifre) {
                  _password = girilenSifre!;
                },
                //varsayılan değeri tanımlar
                //initialValue: "nergizalici",
                decoration: InputDecoration(
                  //hata mesajlarının rengini değiştirir.
                  errorStyle: TextStyle(color: Colors.red),
                  labelText: "Şifre",
                  hintText: "Password",
                  border: OutlineInputBorder(),
                ),
                validator: (girilenPass) {
                  if (girilenPass!.length < 4) {
                    return "Şifre en az 5 karakter olmalı";
                  } else {
                    return null;
                  }
                },
              ),

              SizedBox(height: 10),

              SizedBox(
                width: 180,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade300,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.green, width: 3),
                    ),
                  ),

                  onPressed: () {
                    //validate tamamlandı mı kontrol etmek için
                    bool _isValidate = _formKey.currentState!.validate();
                    if (_isValidate) {
                      //textformfielddan gelen verileri kydetme işlemi
                      _formKey.currentState!.save();
                      String result =
                          "username: $_userName\nemail: $_email\nşifre:$_password ";
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.pink,
                          content: Text(
                            result,
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      );
                      //save işlemi olduktan sonra textformfieldları temizler
                      _formKey.currentState!.reset();
                    }
                  },
                  child: Text("Onayla"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



//validate  üçşekilde 
// 1- yazar yazar ondan sonra/butona tıklandığında 2- kullanıcı textfromfielde tıkladığında  3- bu da hatalı/her zaman sayfaya girdiğinde her yer kırmızı






//tek bir birim varsa tekfield kullanılır. çoklu alan varsa textformfiel kullanılır.
//controllerlar her zaman arka tarafta birikir 
//global key de bir controllerdır
//bunlar daima arka planda biriktiği için dispose edimesi gerekir.
//mesela anasayfada şifre kontrolü sağladım sonra anasayfaya geçtiğinde o şifre controller bilgisi dispose ediliyor
//önce init sonra dispose
//dispose kapatıyor
// TextEditingController içine varsayılan olarak text parametresi alması işimiz kolaylaştırır
//texfield stateful widgettan türer.
//nodefocuseda dispose edilir.sayfa değiştikten sonra ortadan kaldırılır.




//yarın için
// 1) sayfaların ekran fotoları
//2) ekran kaydı sesli anlatım