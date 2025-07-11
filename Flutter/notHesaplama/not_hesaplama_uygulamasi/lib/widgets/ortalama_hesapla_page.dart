import 'package:flutter/material.dart';
import 'package:not_hesaplama_uygulamasi/constants/sabitler.dart';
import 'package:not_hesaplama_uygulamasi/helper/data_helper.dart';
import 'package:not_hesaplama_uygulamasi/model/ders.dart';
import 'package:not_hesaplama_uygulamasi/widgets/ders_listesi.dart';
import 'package:not_hesaplama_uygulamasi/widgets/ortalama_goster.dart';

class OrtalamaHesaplaPage extends StatefulWidget {
  const OrtalamaHesaplaPage({super.key});

  @override
  State<OrtalamaHesaplaPage> createState() => _OrtalamaHesaplaPageState();
}

class _OrtalamaHesaplaPageState extends State<OrtalamaHesaplaPage> {
  final formKey =
      GlobalKey<FormState>(); //formdaki veriyi almak için kullanacağımız key
  double secilenHarfDegeri = 4;
  double secilenKrediDegeri = 1;
  String girilenDersAdi = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(Sabitler.baslikText, style: Sabitler.baslikStyle),
        foregroundColor: Sabitler.baslikRengi,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              //form
              Expanded(flex: 2, child: _buildForm()),

              Expanded(
                flex: 1,
                child: OrtalamaGoster(
                  ortalama: DataHelper.ortalamaHesapla(),
                  dersSayisi: DataHelper.tumEklenecekDersler.length,
                ),
              ),
            ],
          ),

          //Liste Gelecek
          Expanded(child: DersListesi(
            onElemancikarildi: (index){ // kendi callback fonksiyonumuz
            DataHelper. tumEklenecekDersler.removeAt(index);
            setState(() {
              
            });
            },
          )),
        ],
      ),
    );
  }

  Widget _buildForm() {
    return Form(
      key: formKey,
      child: Column(
        children: [
          //textformfield gelecek
          _buildTextFormField(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //harf dropdownbutton gelecek
              _buildHarfler(),
              //kredi dropdownbutton gelecek
              // Iconbutton gelecek
              _buildKrediler(),

              IconButton(
                onPressed: () {
                  _dersEkleveOrtalamaHesapla();
                },
                icon: Icon(
                  Icons.arrow_forward_ios,
                  color: Sabitler.anaRenk,
                  size: 30,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTextFormField() {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, bottom: 6),
      child: TextFormField(
        validator: (s) {
          if (s!.isEmpty) {
            return "Ders adını giriniz";
          } else {
            return null;
          }
        },
        onSaved: (gelenDersAdi) {
          setState(() {
            girilenDersAdi = gelenDersAdi!;
          });
        },
        decoration: InputDecoration(
          hintText: "Matematik",
          border: OutlineInputBorder(borderRadius: Sabitler.borderRadius),
          filled: true,
          fillColor: Sabitler.anaRenk.shade50,
        ),
      ),
    );
  }

  _buildHarfler() {
    return Container(
      padding: Sabitler.dropDownPadding,
      //padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: Sabitler.anaRenk.shade50,
        borderRadius: Sabitler.borderRadius,
      ),
      child: DropdownButton<double>(
        elevation: 16,
        iconEnabledColor: Sabitler.anaRenk.shade200,
        focusColor: Colors.transparent,
        underline: Container(),
        value: secilenHarfDegeri,
        items: DataHelper.tumDerslerinHarfleri(),

        onChanged: (deger) {
          setState(() {
            secilenHarfDegeri = deger!;
          });
        },
      ),
    );
  }

  _buildKrediler() {
    return Container(
      padding: Sabitler.dropDownPadding,
      //padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: Sabitler.anaRenk.shade50,
        borderRadius: Sabitler.borderRadius,
      ),
      child: DropdownButton<double>(
        elevation: 16,
        iconEnabledColor: Sabitler.anaRenk.shade200,
        focusColor: Colors.transparent,
        underline: Container(),
        value: secilenKrediDegeri,
        items: DataHelper.dropDownKrediMenuBilgisi(),

        onChanged: (deger) {
          setState(() {
            secilenKrediDegeri = deger!;
          });
        },
      ),
    );
  }

  void _dersEkleveOrtalamaHesapla() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      Ders eklenecekDers = Ders(
        ad: girilenDersAdi,
        harfDegeri: secilenHarfDegeri,
        krediDegeri: secilenKrediDegeri,
      );
      DataHelper.dersEkle(eklenecekDers);

      setState(() {});
    }
  }
}
