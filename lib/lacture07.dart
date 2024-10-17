import 'package:flutter/material.dart';

class Lacture07 extends StatefulWidget {
  const Lacture07({super.key});

  @override
  State<Lacture07> createState() => _Lacture07State();
}

class _Lacture07State extends State<Lacture07> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              style: TextStyle(color: Colors.red),
              cursorColor: Colors.red,
              maxLength: 10,
              obscureText: false,
              showCursor: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                // border: InputBorder.none,
                hintText: 'Enter the name',

                prefixIcon: Icon(Icons.add),
                suffixIcon: Icon(Icons.remove),
                prefixIconColor: Colors.red,
                suffixIconColor: Colors.red,
                enabled: true,
                hoverColor: Colors.red,
                fillColor: Colors.red,
                focusColor: Colors.red,
                labelStyle: TextStyle(color: Colors.red),

                hintStyle: TextStyle(color: Colors.red),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.amber,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.amber,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.amber,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            TextFormField(
              style: TextStyle(color: Colors.red),
              cursorColor: Colors.red,
              maxLength: 10,
              obscureText: false,
              showCursor: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                // border: InputBorder.none,
                hintText: 'Enter the name',

                prefixIcon: Icon(Icons.add),
                suffixIcon: Icon(Icons.remove),
                prefixIconColor: Colors.red,
                suffixIconColor: Colors.red,
                enabled: true,
                hoverColor: Colors.red,
                fillColor: Colors.red,
                focusColor: Colors.red,
                labelStyle: TextStyle(color: Colors.red),

                hintStyle: TextStyle(color: Colors.red),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.amber,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.amber,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.amber,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
