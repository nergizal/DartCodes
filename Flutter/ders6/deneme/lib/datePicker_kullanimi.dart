import 'package:flutter/material.dart';

class DatepickerKullanimi extends StatefulWidget {
  const DatepickerKullanimi({super.key});

  @override
  State<DatepickerKullanimi> createState() => _DatepickerKullanimiState();
}

class _DatepickerKullanimiState extends State<DatepickerKullanimi> {
  TextEditingController tfTarih = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date Picker Kullanımı"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(58.0),
              child: TextField(
                controller: tfTarih,
                decoration: InputDecoration(hintText: "Tarih Seçiniz"),
                onTap: () {
                  showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1970),
                    lastDate: DateTime(2050),
                  ).then((tarih){
                    setState(() {
                      tfTarih.text= "${tarih!.day}/${tarih.month}/${tarih.year}";
                    });
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
