import 'package:flutter/material.dart';

class NestedTabbar extends StatefulWidget {
  const NestedTabbar({super.key});

  @override
  State<NestedTabbar> createState() => _NestedTabbarState();
}

class _NestedTabbarState extends State<NestedTabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("İç İçe Sekmeli Tab"),
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
          bottom: const TabBar(
            tabs: [
              Tab(text: "Yazlık"),
              Tab(text: "Kışlık"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            InnerTabView(categoryName: "Yazlık"),
            InnerTabView(categoryName: "Kışlık"),
          ],
        ),
      ),
    );
  }
}

class InnerTabView extends StatelessWidget {
  final String categoryName;
  const InnerTabView({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(text: "Pantolon"),
              Tab(text: "Etek"),
              Tab(text: "Gömlek"),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                Center(child: Text("$categoryName- Pantolon")),
                Center(child: Text("$categoryName- Etek")),
                Center(child: Text("$categoryName- Gömlek")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
