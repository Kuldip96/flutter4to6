import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Lacture19 extends StatefulWidget {
  const Lacture19({super.key});

  @override
  State<Lacture19> createState() => _Lacture19State();
}

class _Lacture19State extends State<Lacture19> {
  double currentvolume = 10;
  bool currentValue = false;
  bool currentValue1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Slider(
            value: currentvolume,
            max: 100,
            divisions: 100,
            label: currentvolume.round().toString(),
            onChanged: (double number) {
              setState(() {
                currentvolume = number;
              });
            },
          ),
          Text(currentvolume.toString()),
          Checkbox(

            
              value: currentValue,
              onChanged: (value) {
                setState(() {
                  currentValue = value!;
                });
              }),
          Switch(
              activeColor: Colors.red,
              inactiveTrackColor: Colors.yellow,
              activeTrackColor: Colors.black,
              inactiveThumbColor: Colors.pink,
              thumbColor: WidgetStateProperty.resolveWith<Color>(
                  (Set<WidgetState> states) {
                if (states.contains(WidgetState.disabled)) {
                  return Colors.orange.withOpacity(.48);
                }
                return const Color.fromARGB(255, 246, 1, 1);
              }),
              value: currentValue1,
              onChanged: (value) {
                setState(() {
                  currentValue1 = value;
                });
              }),
          CupertinoSwitch(value: true, onChanged: (value) {})
        ],
      ),
    );
  }
}
