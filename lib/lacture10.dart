import 'package:flutter/material.dart';

class Lacture10 extends StatefulWidget {
  const Lacture10({super.key});

  @override
  State<Lacture10> createState() => _Lacture10State();
}

class _Lacture10State extends State<Lacture10> {
  List<String> textString = ["Priyanshi", "Dhara", "Manasvi", "Ravi", "Data"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          SizedBox(//Expanded virtical mate
            height: 100,//
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: textString.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(8),
                  width: 100,
                  color: Colors.pink,
                  child: Column(
                    children: [
                      Text(textString[index]),
                    ],
                  ),
                );
              },
            ),
          ),

          
        ],
      ),
    );
  }
}
