import 'dart:developer';
import 'package:demoapp/Widgets/comman_container.dart';
import 'package:demoapp/Widgets/comman_text.dart';
import 'package:flutter/material.dart';

class CommanWidget extends StatefulWidget {
  const CommanWidget({super.key});

  @override
  State<CommanWidget> createState() => _CommanWidgetState();
}

class _CommanWidgetState extends State<CommanWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          CommanContainer(
            hightt: 50,
            // wigth: 50,
            // color: Colors.red,
            borderRadius: BorderRadius.circular(5),
            text: "Log in",
          ),
          CommanContainer(
            hightt: 50,
            wigth: 50,
            color: Colors.red,
            borderRadius: BorderRadius.circular(5),
            text: "Sign Up",
          ),
          AppText(
            text: "data 1",
            weight: 12,
            onPress: () {
              log("message");
            },
          ),
          const AppText(
            text: "data 2",
            color: Colors.pink,
          ),
          const AppText(
            text: "data 3",
            weight: 50,
          ),
          const AppText(
            text: "data 4",
          ),
          const AppText(text: "text"),
        ],
      ),
    );
  }
}
