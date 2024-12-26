import 'dart:developer';

import 'package:demoapp/lacture15.dart';
import 'package:flutter/material.dart';

enum SampleItem { itemOne, itemTwo, itemThree, itemfour }

class Lacture16 extends StatefulWidget {
  const Lacture16({super.key});

  @override
  State<Lacture16> createState() => _Lacture16State();
}

class _Lacture16State extends State<Lacture16> {
  SampleItem? selected;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Center(
            child: PopupMenuButton<SampleItem>(
              initialValue: selected,
              onSelected: (value) {
                setState(() {
                  selected != value;
                  log(value.toString());
                });
              },
              itemBuilder: (context) => <PopupMenuEntry<SampleItem>>[
                PopupMenuItem(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Lacture15();
                    }));
                  },
                  value: SampleItem.itemOne,
                  child: Text('Data1'),
                ),
                PopupMenuItem(
                  value: SampleItem.itemTwo,
                  child: Text('Data2'),
                ),
                PopupMenuItem(
                  value: SampleItem.itemThree,
                  child: Text('Data3'),
                ),
                PopupMenuItem(
                  value: SampleItem.itemfour,
                  child: Text('Data4'),
                ),
              ],
            ),
          ),
          Text(selected.toString())
        ],
      ),
    );
  }
}
