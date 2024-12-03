import 'package:flutter/material.dart';

class Lacture13 extends StatefulWidget {
  const Lacture13({super.key});

  @override
  State<Lacture13> createState() => _Lacture13State();
}

class _Lacture13State extends State<Lacture13> {
  final List<Map<String, String>> mapData = [
    {"id": "1", "name": "raj", "image": "images/bed 1.png"},
    {"id": "2", "name": "rohan", "image": "images/chair 4.jpg"},
    {"id": "3", "name": "vikas", "image": "images/sofa 1.png"},
  ];
  List myList = [1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: ListView(
        
        children: mapData.map((toElement) {
          return ListTile(
            title: Text(
              toElement["id"].toString(),
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text(toElement["name"].toString()),
            leading: Image.asset(toElement["image"].toString()),
          );
        }).toList(),
      ),
    );
  }
}
