import 'dart:developer';

import 'package:flutter/material.dart';

class Lacture6 extends StatefulWidget {
  const Lacture6({super.key});

  @override
  State<Lacture6> createState() => _Lacture6State();
}

class _Lacture6State extends State<Lacture6> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    number++;
                  });
                  log(number.toString());
                },
                icon: Icon(
                  Icons.add,
                  size: 35,
                ),
              ),
              Text(number.toString()),
              IconButton(
                onPressed: () {
                  setState(() {
                    number--;
                  });
                },
                icon: Icon(
                  Icons.remove,
                  size: 35,
                ),
              ),
            ],
          ),
          TextButton(
              onPressed: () {
                log("button press");
              },
              child: Text('Press')),
          GestureDetector(
            //InkWell
            onTap: () {
              log('message');
            },

            onLongPress: () {
              log('message long');
            },
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "Press",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
