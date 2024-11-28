import 'package:flutter/material.dart';

class Lacture12 extends StatefulWidget {
  const Lacture12({super.key});

  @override
  State<Lacture12> createState() => _Lacture12State();
}

class _Lacture12State extends State<Lacture12> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
        ),
        body: const Column(
          children: [
            TabBar(
              // dividerColor: Colors.red,
              // dividerHeight: 0,

              // indicator: BoxDecoration(
              // // color: Colors.red,
              // ),
              // indicatorSize: TabBarIndicatorSize.label,
              // indicatorWeight: 20,

              tabs: [
                Tab(
                  child: Icon(Icons.settings),
                ),
                Icon(Icons.add),
                Icon(Icons.delete_sharp),
              ],
            ),
            Expanded(
              child: TabBarView(children: [
                Center(
                  child: Text("It's cloudy here"),
                ),
                Center(
                  child: Text("It's rainy here"),
                ),
                Center(
                  child: Text("It's sunny here"),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
