import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyStepperApp());
  }
}

class MyStepperApp extends StatefulWidget {
  const MyStepperApp({super.key});

  @override
  State<MyStepperApp> createState() => _MyStepperAppState();
}

class _MyStepperAppState extends State<MyStepperApp> {
  int _aktifStep = 0;
  String kullaniciIsmi = "", mail = "", sifre = "";
  late List<Step> tumStepler;
  var keyName = GlobalKey<FormFieldState>();
  var keyMail = GlobalKey<FormFieldState>();
  var keySifre = GlobalKey<FormFieldState>();
  bool hata = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    tumStepler = _tumStepler();
    return Scaffold(
      appBar: AppBar(
        title: Text("Stepper Kullanımı"),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Stepper(
          currentStep: _aktifStep,

          onStepContinue: () {
            setState(() {
              _ileriButonuKontrolu();
            });
          },
          onStepCancel: () {
            setState(() {});
            if (_aktifStep > 0) {
              _aktifStep--;
            } else {
              _aktifStep = 0;
            }
          },
          steps: _tumStepler(),
        ),
      ),
    );
  }

  List<Step> _tumStepler() {
    List<Step> stepler = [
      Step(
        title: Text("Username başlık"),
        subtitle: Text("Username altbaşlık"),
        state: stateleriAyarla(0),
        isActive: true,
        content: TextFormField(
          onSaved: (gelenName) {
            kullaniciIsmi = gelenName!;
          },
          key: keyName,
          validator: (girilenUserName) {
            if (girilenUserName!.length < 6) {
              return "En az 6 karakter olabilir";
            } else {
              return null;
            }
          },
          decoration: InputDecoration(
            labelText: "Username",
            hintText: "Kullanıcı adı",
            border: OutlineInputBorder(),
          ),
        ),
      ),

      Step(
        title: Text("Mail başlık"),
        subtitle: Text("Mail altbaşlık"),
        state: stateleriAyarla(1),
        isActive: true,

        content: TextFormField(
          onSaved: (gelenMail) {
            mail = gelenMail!;
          },
          key: keyMail,
          validator: (girilenmail) {
            if (!girilenmail!.contains("@")) {
              return "En az 6 karakter olabilir";
            } else {
              return null;
            }
          },
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "e- Mail",
            hintText: "Mail giriniz",
          ),
        ),
      ),

      Step(
        title: Text("Şifre başlık"),
        subtitle: Text("Şifre altbaşlık"),
        state: stateleriAyarla(2),
        isActive: true,
        content: TextFormField(
          onSaved: (gelenSifre) {
            sifre = gelenSifre!;
          },
          key: keySifre,
          validator: (girilenSifre) {
            if (girilenSifre!.length < 8) {
              return "En az 8 karakter olabilir";
            } else {
              return null;
            }
          },
          decoration: InputDecoration(
            labelText: "Şifre",
            hintText: "Şifre ",
            border: OutlineInputBorder(),
          ),
        ),
      ),
    ];
    return stepler;
  }

  StepState stateleriAyarla(int oAnkiStep) {
    if (_aktifStep == oAnkiStep) {
      if (hata) {
        return StepState.error;
      } else {
        return StepState.editing;
      }
    } else {
      return StepState.complete;
    }
  }

  void _ileriButonuKontrolu() {
    switch (_aktifStep) {
      //0.indeksin başlangıcı
      case 0:
        if (keyName.currentState!.validate()) {
          keyName.currentState!.save();
          hata = false;
          _aktifStep = 1;
        } else {
          hata = true;
        }
        break;

      //1.indeksin başlangıcı
      case 1:
        if (keyMail.currentState!.validate()) {
          keyMail.currentState!.save();
          hata = false;
          _aktifStep = 2;
        } else {
          hata = true;
        }
        break;

      case 2:
        if (keySifre.currentState!.validate()) {
          keySifre.currentState!.save();
          hata = false;
          _aktifStep = 2;
          forTamamlandi();
        } else {
          hata = true;
        }
        break;
    }
  }

  void forTamamlandi() {
    String result =
        "Girilen değeerler: isim => $kullaniciIsmi, email=> $mail, şifre: $sifre";

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.purple,
        content: Text(
          result,
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
    );
  }
}
