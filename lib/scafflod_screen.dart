import 'package:flutter/material.dart';

class ScafflodScreen extends StatefulWidget {
  const ScafflodScreen({super.key});

  @override
  State<ScafflodScreen> createState() => _ScafflodScreenState();
}

class _ScafflodScreenState extends State<ScafflodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        actions: [
          Icon(Icons.search),
          Icon(Icons.close),
        ],
        actionsIconTheme: IconThemeData(
          color: Colors.white,
        ),
        elevation: 5.0,
        shadowColor: Colors.black,
        leading: Icon(Icons.menu),
        title: Text('data'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.amber,
    );
  }
}
