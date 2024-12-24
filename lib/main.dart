import 'package:demoapp/lacture01.dart';
import 'package:demoapp/lacture02.dart';
import 'package:demoapp/lacture15.dart';
import 'package:demoapp/mediaquey.dart';

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
      initialRoute: 'lacture15',
      routes: {
        '/': (context) => Lacture01(),
        'lacture2': (context) => Lacture02(),
        'lacture15': (context) => Lacture15(),
      },
      // home: Lacture01(),
    );
  }
}
