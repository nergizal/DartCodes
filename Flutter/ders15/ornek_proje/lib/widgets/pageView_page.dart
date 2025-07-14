import 'package:flutter/material.dart';

class PageviewPage extends StatefulWidget {
  const PageviewPage({super.key});

  @override
  State<PageviewPage> createState() => _PageviewPageState();
}

class _PageviewPageState extends State<PageviewPage> {
  bool yatayEksen = true;
  bool isPageSnapping = true;
  int currentIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    // TODO: implement initState
    pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            controller: pageController,
            scrollDirection: yatayEksen ? Axis.horizontal : Axis.vertical,
            //dokunduğumuzda diğer sayfaya mı geçsin yoksa harekete göre mi kalsın
            pageSnapping: isPageSnapping,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
              debugPrint("Sayfa index:$index");
            },
            children: [
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.indigo.shade300,
                child: Center(
                  child: Text("Sayfa 0", style: TextStyle(fontSize: 36)),
                ),
              ),

              Container(
                width: double.infinity,
                height: 300,
                color: Colors.yellow.shade300,
                child: Center(
                  child: Text("Sayfa 1", style: TextStyle(fontSize: 36)),
                ),
              ),

              Container(
                width: double.infinity,
                height: 300,
                color: Colors.deepPurple.shade300,
                child: Center(
                  child: Text("Sayfa 2", style: TextStyle(fontSize: 36)),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            height: 200,
            width: double.infinity,
            color: Colors.blueGrey,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: currentIndex == 2
                          ? null
                          : () {
                              pageController.nextPage(
                                duration: Duration(seconds: 2),
                                curve: Curves.easeIn,
                              );
                            },
                      child: Text("Next"),
                    ),

                    SizedBox(width: 15),
                    ElevatedButton(
                      onPressed: currentIndex == 0
                          ? null
                          : () {
                              pageController.previousPage(
                                duration: Duration(seconds: 2),
                                curve: Curves.easeIn,
                              );
                            },
                      child: Text("Back"),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("Yatay eksende Çalış"),
                    Checkbox(
                      value: yatayEksen,
                      onChanged: (val) {
                        setState(() {
                          yatayEksen = val!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("Page Snapping Değiştir"),
                    Checkbox(
                      value: isPageSnapping,
                      onChanged: (val) {
                        setState(() {
                          isPageSnapping = val!;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
