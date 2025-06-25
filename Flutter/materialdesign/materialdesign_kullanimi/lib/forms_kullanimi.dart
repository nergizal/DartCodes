import 'package:flutter/material.dart';

//Form da validate yapabilmek için GlobalKe türünde bir key vardır. Bu key bize validasyon almamızı sağlar.

class FormsKullanimi extends StatefulWidget {
  const FormsKullanimi({super.key});

  @override
  State<FormsKullanimi> createState() => _FormsKullanimiState();
}

class _FormsKullanimiState extends State<FormsKullanimi> {
  //Valdasyon için gereken key

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  //TextField dan kullanıcı adı verisini almamızı sağlaayn değişken
  TextEditingController tfKullaniciAdi = TextEditingController();
  //TextField dan Kullanıcıdan dan sifre verisini almayı sağlayan değişken
  TextEditingController tfSifre = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forms"),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    //Kullanıcı Adı Giriş Baş.
                    TextFormField(
                      controller: tfKullaniciAdi,
                      decoration: InputDecoration(hintText: "Kullanıcı Adı"),
                      validator: (tfKullaniciAdi) {
                        if (tfKullaniciAdi!.isEmpty) {
                          return "Kullanıcı Adı Boş Olamaz";
                        }
                        return null;
                      },
                    ),
                    // K.Adı bitiş
                    SizedBox(height: 22),
                    //Sifre Başlangıç
                    TextFormField(
                      controller: tfSifre,
                      decoration: InputDecoration(
                        hintText: "Şifre Giriniz",
                        labelText: 'Şifre',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide(
                            color: Colors.yellow,
                            width: 100.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide(
                            color: Colors.green,
                            width: 2.0,
                          ),
                        ),
                      ),
                      validator: (tfSifre) {
                        if (tfSifre!.isEmpty) {
                          return "Şifre boş olamaz";
                        }
                        if (tfSifre.length < 6) {
                          return "Şire en az 6 karakter olmalı";
                        }
                        return null;
                      },
                    ),
                    //Şifre Bitiş
                    SizedBox(height: 22),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 14,
                        ),
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          //Butonu Kare yapar.
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        bool kontrolSonuc = formKey.currentState!.validate();
                        if (kontrolSonuc) {
                          String userName = tfKullaniciAdi.text;
                          String userPass = tfSifre.text;

                          print("Kullanıcı Adı: $userName - şifre: $userPass");
                        }
                      },
                      child: Text("Giriş Yap"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
