import 'package:flutter/material.dart';

class Sayfa2Detay extends StatefulWidget {
  Sayfa2Detay({super.key});

  @override
  State<Sayfa2Detay> createState() => _Sayfa2DetayState();
}

class _Sayfa2DetayState extends State<Sayfa2Detay> {
  String? secilenDeger;
  final List<String> secenekler = ["İngilizce", "Türkçe"];
  TextEditingController _controller = TextEditingController();
  bool isButtonActive = false;
  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      if (isButtonActive = true) {
        setState(() {
          isButtonActive = true;
        });
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: DropdownButton<String>(
              value: secilenDeger,
              items: secenekler.map((String item) {
                return DropdownMenuItem<String>(value: item, child: Text(item));
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  secilenDeger = newValue;
                });
              },
            ),
          ),
        ],
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Container(
                  child: Text(
                    "Welcome to Ovenly",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Container(
                  child: Text(
                    "We’ll send you a verification code to get started",
                    style: TextStyle(fontSize: 14, color: Colors.black45),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 60),

          Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Phone Number*",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 230, 228, 228),
                        image: DecorationImage(
                          image: AssetImage("resimler/b.png"),
                        ),
                      ),
                      height: 30,
                      width: 60,

                      child: Container(
                        child: Text(
                          "+65",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ),
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 30,
                        width: 120,

                        child: TextField(
                          keyboardType: TextInputType.phone,
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "54XXXXXXX",
                            hintStyle: TextStyle(color: Colors.grey.shade400),
                            isDense: true,
                            contentPadding: EdgeInsets.symmetric(vertical: 5),
                          ),
                        ),
                      ),
                      Container(height: 1, width: 260, color: Colors.black),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 10),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 45,
                      width: 410,
                      child: ElevatedButton(
                        onPressed: isButtonActive
                            ? () {
                                print("Butona tıklandı");
                              }
                            : null,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: isButtonActive
                              ? Colors.deepOrange
                              : Colors.grey,
                          disabledBackgroundColor: Colors.grey.shade300,
                        ),
                        child: Text(
                          "Continue",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("You agree to our "),
                  Text(
                    "Terms of Service",
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                  Text(" & "),
                  Text(
                    "Privacy Policy.",
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
