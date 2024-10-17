import 'package:flutter/material.dart';

class Lacture09 extends StatelessWidget {
  const Lacture09({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Container(
        height: 500,
        child: ListView(
          scrollDirection: Axis.vertical,
          // physics: NeverScrollableScrollPhysics(),
          // reverse: true,

          padding: EdgeInsets.only(left: 10, right: 10),
          children: [
            Row(
              children: [
                Text("data"),
                Text("data"),
                Text("data"),
              ],
            ),
            Container(
              height: 50,
              width: 100,
              color: Colors.yellow,
              child: Text("1"),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.blue,
              child: Text("2"),
            ),
            // Container(
            //   height: 50,
            //   width: 50,
            //   color: Colors.greenAccent,
            //   child: Text("3"),
            // ),
            // Container(
            //   height: 50,
            //   width: 100,
            //   color: Colors.yellow,
            //   child: Text("1"),
            // ),
            // Container(
            //   height: 50,
            //   width: 50,
            //   color: Colors.blue,
            //   child: Text("2"),
            // ),
            // Container(
            //   height: 50,
            //   width: 50,
            //   color: Colors.greenAccent,
            //   child: Text("3"),
            // ),
          ],
        ),
      ),
    );
  }
}
