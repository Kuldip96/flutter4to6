import 'package:demoapp/lacture07.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Lacture07()));
    });
    super.initState();
  }

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
          CupertinoSwitch(value: true, onChanged: (value) {}),
          ElevatedButton(
              onPressed: () {
                final snackbar = SnackBar(
                  backgroundColor: Colors.red,
                  duration: Duration(seconds: 3),
                  content: Text('Show Snackbar'),
                  action: SnackBarAction(label: 'Undo', onPressed: () {}),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              },
              child: Text("SnackBar")),
          ElevatedButton(
              onPressed: () {
                Fluttertoast.showToast(
                    msg: "This is Center Short Toast",
                    toastLength: Toast.LENGTH_LONG,
                    gravity: ToastGravity.CENTER_LEFT,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.transparent,
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
              child: Text('Fluuter Toast'))
        ],
      ),
    );
  }
}
