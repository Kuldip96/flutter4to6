import 'package:flutter/material.dart';

class Lacture08 extends StatefulWidget {
  const Lacture08({super.key});

  @override
  State<Lacture08> createState() => _Lacture08State();
}

class _Lacture08State extends State<Lacture08> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              // backgroundColor: Colors.red,
              elevation: 10,
            ),
            onPressed: () {},
            child: Text("Press button"),
          ),
          OutlinedButton(
            style: ElevatedButton.styleFrom(
              // backgroundColor: Colors.red,
              elevation: 10,
            ),
            onPressed: () {},
            child: Text("Button press"),
          ),
        ],
      ),
    );
  }
}
