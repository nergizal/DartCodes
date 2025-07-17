import 'package:flutter/material.dart';
import 'package:myproject/model/my_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedKullanimi extends StatefulWidget {
  const SharedKullanimi({super.key});

  @override
  State<SharedKullanimi> createState() => _SharedKullanimiState();
}

class _SharedKullanimiState extends State<SharedKullanimi> {
  var _secilenCinsiyet = Cinsiyet.KADIN;
  var _secilenRenkler = <String>[];
  var ogrenciMi = false;
  late TextEditingController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TextEditingController();
    _verileriOku();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preferences İşlemleri"),

        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          ListTile(
            title: TextField(
              controller: controller,
              decoration: InputDecoration(labelText: "Adıınızı giriniz"),
            ),
          ),

          _buildRadioListTile("Kadın", Cinsiyet.KADIN),
          _buildRadioListTile("Erkek", Cinsiyet.ERKEK),
          _buildRadioListTile("İstemiyorum", Cinsiyet.DIGER),

          for (var item in Renkler.values) _buildCheckBoxListeTile(item),

          SwitchListTile(
            title: Text("Öğrenci misin"),
            value: ogrenciMi,
            onChanged: (ogrenciDdeger) {
              setState(() {
                ogrenciMi = ogrenciDdeger;
              });
            },
          ),

          TextButton(
            onPressed: () {
              _verileriKaydet();
            },
            child: Text("Kaydet"),
          ),
        ],
      ),
    );
  }

  Widget _buildRadioListTile(String title, Cinsiyet cinsiyet) {
    return RadioListTile(
      title: Text(title),
      value: cinsiyet,
      groupValue: _secilenCinsiyet,
      onChanged: (secilmisCinsiyet) {
        setState(() {
          _secilenCinsiyet = secilmisCinsiyet!;
        });
      },
    );
  }

  Widget _buildCheckBoxListeTile(Renkler renk) {
    return CheckboxListTile(
      title: Text(renk.name),
      value: _secilenRenkler.contains(renk.name),
      onChanged: (renkSecildiMi) {
        if (renkSecildiMi == false) {
          _secilenRenkler.remove(renk.name);
        } else {
          _secilenRenkler.add(renk.name);
        }
        setState(() {
          debugPrint(_secilenRenkler.toString());
        });
      },
    );
  }

  void _verileriKaydet() async {
    final String name = controller.text;
    final preferences = await SharedPreferences.getInstance();
    preferences.setString("name", name);
    preferences.setBool("ogrenci", ogrenciMi);
    preferences.setInt("cinsiyet", _secilenCinsiyet.index);
    preferences.setStringList("renkler", _secilenRenkler);
  }

  void _verileriOku() async {
    final preferences = await SharedPreferences.getInstance();
    controller.text = preferences.getString("name") ?? "";
    ogrenciMi = preferences.getBool("ogrenci") ?? false;
    _secilenCinsiyet = Cinsiyet.values[(preferences.getInt("cinsiyet")) ?? 0];
    _secilenRenkler = preferences.getStringList("renkler") ?? <String>[];

    setState(() {});
  }
}
