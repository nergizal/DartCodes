import 'package:flutter/material.dart';
//20-06

class TimepickerKullanimi extends StatefulWidget {
  const TimepickerKullanimi({super.key});

  @override
  State<TimepickerKullanimi> createState() => _TimepickerKullanimiState();
}

class _TimepickerKullanimiState extends State<TimepickerKullanimi> {
  TextEditingController tfSaat = TextEditingController(); //İçindeki metni kontrol etmek için okumak veya değiştirmek 
                                                          //Başka yerden erişip değerini dinamik olarak değiştirmek.
                                                          //tfSaat bunun nesnesi
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TimePicker Kullanımı"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.centerLeft,
                  height: 80,
                  child: TextField(
                    enableInteractiveSelection: false, //Kullanıcı 'Saat Seçiniz' metnini seçip işlem yapamaz
                    readOnly: true, //klavyeyle metin yazılamaz . ontap varsa seçilir
                    controller: tfSaat, //tfSaat.text ile bu alandaki metni OKUYABİLİRSİN
                    decoration: InputDecoration(
                      hintText: "Saat Seçiniz",
                      prefixIcon: GestureDetector(child: Icon(Icons.alarm),
                      onTap: () {
                        showTimePicker(context: context, initialTime: TimeOfDay.now()).then((zaman){ //then((zaman) -- kullanıcı saat seçimini yaptıktan sonra çalışacak olan bloktur 
                          setState(() {
                            tfSaat.text="${zaman!.hour} : ${zaman.minute} ";
                          });
                        });
                      },),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(alignment: Alignment.centerLeft, height: 50),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StandardTimePicker extends StatefulWidget {
  final TextEditingController tfSaat;
  const StandardTimePicker({super.key, required this.tfSaat});

  @override
  State<StandardTimePicker> createState() => _StandardTimePickerState();
}

class _StandardTimePickerState extends State<StandardTimePicker> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.tfSaat,
      decoration: InputDecoration(hintText: "Saat Giriniz"),
      onTap: () {
        showTimePicker(
          context: context,
          initialTime: TimeOfDay.fromDateTime(DateTime.now()),
        ).then((alinanSaat) {
          setState(() {
            widget.tfSaat.text = "${alinanSaat!.hour}:${alinanSaat.minute}";
          });
        });
      },
    );
  }
}
