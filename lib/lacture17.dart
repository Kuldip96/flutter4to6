import 'package:flutter/material.dart';

List<String> list = [
  'one',
  'two',
  'three',
  'four',
  'five',
];

class Lacture17 extends StatefulWidget {
  const Lacture17({super.key});

  @override
  State<Lacture17> createState() => _Lacture17State();
}

class _Lacture17State extends State<Lacture17> {
  String dropdowniteam = list.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          children: [
            DropdownButton(
              items: list.map<DropdownMenuItem<String>>(
                (String value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value),
                  );
                },
              ).toList(),
              onChanged: (v) {
                setState(() {
                  dropdowniteam = v!;
                });
              },
              value: dropdowniteam,
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                    builder: (context) {
                      return Container(
                        height: 200,
                        child: Center(
                          child: TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("Back"),
                          ),
                        ),
                      );
                    },
                    context: context);
              },
              child: Container(
                margin: EdgeInsets.all(10),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text("BottomSheet"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
