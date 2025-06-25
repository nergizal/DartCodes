import 'package:flutter/material.dart';

class TimePickerKullanimi extends StatefulWidget {
  const TimePickerKullanimi({super.key});

  @override
  State<TimePickerKullanimi> createState() => _TimePickerKullanimiState();
}

class _TimePickerKullanimiState extends 
State<TimePickerKullanimi> {
  TextEditingController tfSaat =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TimePicker"),
        backgroundColor: Colors.grey,
        foregroundColor: Colors.white,
      ),
      body:Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: .0),
          child: TextField(
            controller: tfSaat,
            decoration: InputDecoration(
              hintText: "Saat giriniz"
            ),


            onTap: (){
              showTimePicker(
                
                context: context, 
                initialTime: TimeOfDay.fromDateTime(DateTime.now())
                ).then((alinanSaat){
                  setState(() {
                    tfSaat.text = "${alinanSaat!.hour}:${alinanSaat.minute}";
                  });
                });
            },
          ),
        ),
      ),
    );
  }
}