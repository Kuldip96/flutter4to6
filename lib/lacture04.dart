import 'package:flutter/material.dart';

class Lacture04 extends StatefulWidget {
  const Lacture04({super.key});

  @override
  State<Lacture04> createState() => _Lacture04State();
}

class _Lacture04State extends State<Lacture04> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 300,
              width: 400,
              color: Colors.green,
              child: Center(child: Text("data")),
            ),
            Positioned(
              // left: 100,
              right: 20,
              top: 20,
              // bottom: 10,
              // left: 10,
              child: Container(
                height: 100,
                width: 150,
                color: Colors.red,
                child: Text('data'),
              ),
            ),
            Positioned(
              top: 20,
              left: 20,
              child: Container(
                height: 100,
                width: 150,
                color: Colors.yellow,
                child: Text('data'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
