import 'package:flutter/material.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({super.key});

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Container(
              height: 54,
              width: 232,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(60),
              ),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    height: 54,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(60),
                    ),
                  )),
                  Expanded(
                      child: Container(
                    height: 54,
                    decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(60),
                    ),
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
