import 'package:flutter/material.dart';

class Anasayfam extends StatefulWidget {
  const Anasayfam({super.key});

  @override
  State<Anasayfam> createState() => _AnasayfamState();
}

class _AnasayfamState extends State<Anasayfam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,

        centerTitle: false,
        title: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 270.0),
              child: Text(
                "Location",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Icon(Icons.location_on, color: Colors.deepOrange),
                Text(
                  "New York, USA",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey.shade400.withOpacity(0.2),
              ),
              child: Icon(
                Icons.notifications_active_sharp,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),

      body: Center(
        child: Column(
          children: [
            Container(
              height: 50,
              width: 400,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.shade300,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Icon(Icons.search_outlined),
                  ),
                  SizedBox(width: 16),

                  Text("Search your favourite pizza"),
                  Spacer(),
                  Icon(Icons.more_vert),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 180,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey.shade200,
              ),

              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Special Offer",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "Discount 20% off \napplied at checkout",
                          style: TextStyle(color: Colors.black54),
                        ),
                        SizedBox(height: 10),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepOrange,
                            iconSize: 12,
                          ),
                          onPressed: () {},
                          child: Text(
                            "Order Now",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Image.asset("resimler/icon.png", height: 200, width: 200),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Popular Pizza",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  Spacer(),

                  Text("See All", style: TextStyle(color: Colors.deepOrange)),
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                  ),

                  onPressed: () {},
                  child: Text(
                    "All Pizzas",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade300,
                  ),

                  onPressed: () {},
                  child: Text(
                    "Vegetarian",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade300,
                  ),

                  onPressed: () {},
                  child: Text(
                    "Specials",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 150,
              width: 400,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 10,
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("resimler/a1.png"),
                        Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 16.0,
                                  ),
                                  child: Text(
                                    "Peperroni Pizza",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 90),

                                Image.asset("resimler/k.png"),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey.shade200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
