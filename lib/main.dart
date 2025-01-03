import 'package:demoapp/lacture01.dart';
import 'package:demoapp/lacture02.dart';
import 'package:demoapp/lacture12.dart';
import 'package:demoapp/lacture15.dart';
import 'package:demoapp/lacture16.dart';
import 'package:demoapp/lacture17.dart';
import 'package:demoapp/lacture18.dart';
import 'package:demoapp/lacture19.dart';
import 'package:demoapp/mediaquey.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            // initialRoute: 'lacture17',
            // routes: {
            //   '/': (context) => Lacture01(),
            //   'lacture2': (context) => Lacture02(),
            //   'lacture15': (context) => Lacture15(),
            //   'lacture16': (context) => Lacture16(),
            //   'lacture17': (context) => Lacture17(),
            // },
            home: Lacture19(),
          );
        });
  }
}
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoApp(

//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       // theme: ThemeData(
//       //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//       //   useMaterial3: true,
//       // ),
//       // initialRoute: 'lacture17',
//       // routes: {
//       //   '/': (context) => Lacture01(),
//       //   'lacture2': (context) => Lacture02(),
//       //   'lacture15': (context) => Lacture15(),
//       //   'lacture16': (context) => Lacture16(),
//       //   'lacture17': (context) => Lacture17(),
//       // },
//       home: Lacture18(),
//     );
//   }
// }
