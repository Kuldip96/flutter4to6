import 'package:country_picker/country_picker.dart';
import 'package:demoapp/demo.dart';
import 'package:demoapp/lacture01.dart';
import 'package:demoapp/lacture02.dart';
import 'package:demoapp/lacture12.dart';
import 'package:demoapp/lacture15.dart';
import 'package:demoapp/lacture16.dart';
import 'package:demoapp/lacture17.dart';
import 'package:demoapp/lacture18.dart';
import 'package:demoapp/lacture19.dart';
import 'package:demoapp/lacture20.dart';
import 'package:demoapp/lacture21.dart';
import 'package:demoapp/login_screen.dart';
import 'package:demoapp/mediaquey.dart';
import 'package:demoapp/todo.dart';
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
            supportedLocales: [
              const Locale('en'),
              const Locale('ar'),
              const Locale('es'),
              const Locale('de'),
              const Locale('fr'),
              const Locale('el'),
              const Locale('et'),
              const Locale('nb'),
              const Locale('nn'),
              const Locale('pl'),
              const Locale('pt'),
              const Locale('ru'),
              const Locale('hi'),
              const Locale('ne'),
              const Locale('uk'),
              const Locale('hr'),
              const Locale('tr'),
              const Locale('lv'),
              const Locale('lt'),
              const Locale('ku'),
              const Locale('nl'),
              const Locale('it'),
              const Locale('ko'),
              const Locale('ja'),
              const Locale('id'),
              const Locale('cs'),
              const Locale('ht'),
              const Locale('sk'),
              const Locale('ro'),
              const Locale('bg'),
              const Locale('ca'),
              const Locale('he'),
              const Locale('fa'),
              const Locale('da'),
              const Locale.fromSubtags(
                  languageCode: 'zh',
                  scriptCode: 'Hans'), // Generic Simplified Chinese 'zh_Hans'
              const Locale.fromSubtags(
                  languageCode: 'zh',
                  scriptCode: 'Hant'), // Generic traditional Chinese 'zh_Hant'
            ],
            localizationsDelegates: [
              CountryLocalizations.delegate,
            ],
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
            home: LoginScreen(),
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
