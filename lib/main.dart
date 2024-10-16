import 'package:demoapp/container_screen.dart';
import 'package:demoapp/drower_widget.dart';
import 'package:demoapp/lacture01.dart';
import 'package:demoapp/lacture02.dart';
import 'package:demoapp/lacture03.dart';
import 'package:demoapp/lacture04.dart';
import 'package:demoapp/lacture05.dart';
import 'package:demoapp/lacture07.dart';
import 'package:demoapp/lacture6.dart';
import 'package:demoapp/lacture8.dart';
import 'package:demoapp/row_column.dart';
import 'package:demoapp/scafflod_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Lacture08(),
    );
  }
}
