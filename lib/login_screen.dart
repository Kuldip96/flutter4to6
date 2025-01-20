import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  String? username = "";
  String? userage = "";
  void setValue(String name, String age) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('getname', name);
    await prefs.setString('getage', age);

    setState(() {
      getValue();
    });
  }

  void getValue() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    username = prefs.getString('getname');
    userage = prefs.getString('getage');
    if(username==nameController.text){

    }else{
      
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(hintText: 'name'),
            ),
            TextFormField(
              controller: ageController,
              decoration: InputDecoration(hintText: 'age'),
            ),
            SizedBox(
              height: 100,
            ),
            GestureDetector(
              onTap: () {
                setValue(nameController.text, ageController.text);
              },
              child: Container(
                height: 50,
                width: double.infinity,
                color: Colors.yellow,
                child: Center(child: Text('Enter')),
              ),
            ),
            Text(username.toString()),
            Text(userage.toString()),
          ],
        ),
      ),
    );
  }
}
