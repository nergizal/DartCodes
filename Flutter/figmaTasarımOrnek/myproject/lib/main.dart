import 'package:flutter/material.dart';

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

class MyProject extends StatefulWidget {
  const MyProject({super.key});

  @override
  State<MyProject> createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back, color: Colors.black, size: 20),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(height: 8),
            Text(
              "Activity",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 24),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.shopping_cart,
                          size: 20,
                          color: Colors.black,
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Ordered",
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.local_shipping,
                          size: 20,
                          color: Colors.black,
                        ),
                        SizedBox(width: 4),
                        Text(
                          "Shipped",
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.directions_car,
                          size: 20,
                          color: Colors.black,
                        ),
                        SizedBox(width: 4),
                        Text(
                          "Arriving",
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Icon(Icons.home, size: 20, color: Colors.black),
                        SizedBox(width: 4),
                        Text(
                          "Delivered",
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.blueAccent),
              ),
              height: 55,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10),
                  ),
                  backgroundColor: Colors.white,
                ),
                onPressed: () {},
                child: Text(
                  "View My Orders",
                  style: TextStyle(color: Colors.blueAccent),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(color: Colors.grey.shade300),
            ),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Important",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),

                Spacer(),

                Text(
                  "Clear",
                  style: TextStyle(color: Colors.pinkAccent, fontSize: 14),
                ),
              ],
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset("resimler/logo.png"),
                      SizedBox(width: 10),
                      Column(
                        children: [
                          Text(
                            "2 unread messages from Xiaomi",
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(height: 4),
                          Padding(
                            padding: const EdgeInsets.only(right: 85.0),
                            child: Text(
                              "13 Dec 2018, 09:38",
                              style: TextStyle(color: Colors.black45),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Row(
                    children: [
                      Image.asset(
                        "resimler/shipped.png",
                        color: Colors.pinkAccent,
                      ),
                      SizedBox(width: 10),
                      Column(
                        children: [
                          Text(
                            "2 unread messages from Xiaomi",
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(height: 4),
                          Padding(
                            padding: const EdgeInsets.only(right: 85.0),
                            child: Text(
                              "13 Dec 2018, 09:38",
                              style: TextStyle(color: Colors.black45),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Divider(color: Colors.grey.shade300),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                "Order Updates",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.local_shipping),
                      SizedBox(width: 10),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 40.0),
                            child: Text(
                              "Parcel shipped from China",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          SizedBox(height: 4),
                          Padding(
                            padding: const EdgeInsets.only(right: 85.0),
                            child: Text(
                              "12 Dec 2018, 09:38",
                              style: TextStyle(color: Colors.black45),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Image.asset("resimler/image.png", fit: BoxFit.contain),
                    ],
                  ),

                  SizedBox(height: 20),
                  Divider(color: Colors.grey.shade300),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.home),
                      SizedBox(width: 10),
                      Column(
                        children: [
                          Text(
                            "Order delivered to 22 Baker St..",
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(height: 4),
                          Padding(
                            padding: const EdgeInsets.only(right: 85.0),
                            child: Text(
                              "10 Dec 2018, 08:36",
                              style: TextStyle(color: Colors.black45),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Image.asset("resimler/n.png"),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
