import 'package:flutter/material.dart';

class Lacture03 extends StatefulWidget {
  const Lacture03({super.key});

  @override
  State<Lacture03> createState() => _Lacture03State();
}

class _Lacture03State extends State<Lacture03> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Row(
          //   children: [
          //     Expanded(
          //       // flex: 2,
          //       child: Container(
          //         height: 50,
          //         color: Colors.red,
          //         child: Text('Expanded'),
          //       ),
          //     ),
          //     Flexible(
          //       // fit: FlexFit.loose,
          //       // flex: 1,
          //       child: Container(
          //         height: 50,
          //         color: Colors.yellow,
          //         child: Text('Flecible'),
          //       ),
          //     ),
          //   ],
          // ),
          // SizedBox(
          //   height: 10,
          // ),
          // Row(
          //   children: [
          //     Expanded(
          //       child: Container(
          //         height: 50,
          //         color: Colors.red,
          //         child: Text('Expanded'),
          //       ),
          //     ),
          //     Expanded(
          //       child: Container(
          //         height: 50,
          //         color: Colors.yellow,
          //         child: Text('Expanded'),
          //       ),
          //     ),
          //   ],
          // ),
          // SizedBox(
          //   height: 10,
          // ),
          // Row(
          //   children: [
          //     Flexible(
          //       child: Container(
          //         height: 50,
          //         color: Colors.red,
          //         child: Text('Flecible'),
          //       ),
          //     ),
          //     Expanded(
          //       child: Container(
          //         height: 50,
          //         color: Colors.yellow,
          //         child: Text('Expanded'),
          //       ),
          //     ),
          //   ],
          // ),
          // Flexible(
          //   child: Container(
          //     //height: 50,
          //     color: Colors.red,
          //     child: Text('Flecible'),
          //   ),
          // ),
          // Expanded(
          //   child: Container(
          //     // height: 50,
          //     color: Colors.yellow,
          //     child: Text('Expanded'),
          //   ),
          // ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              // alignment: Alignment.topRight,
              height: 300,
              width: 300,
              color: Colors.red,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'data',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
