import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Lacture18 extends StatefulWidget {
  const Lacture18({super.key});

  @override
  State<Lacture18> createState() => _Lacture18State();
}

class _Lacture18State extends State<Lacture18> {
  void _cupertinodilog(BuildContext context) {
    showCupertinoDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text('Cupertino Dilog'),
          content: const Text('Proceed with destructive action?'),
          actions: [
            CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('No'),
            ),
            CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Yes'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              _cupertinodilog(context);
            },
            child: Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              height: 50.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text("Cupertino Show Dilog"),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Alrt Dilog'),
                      content: const Text('Proceed with destructive action?'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'Cancel'),
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('OK'),
                        ),
                      ],
                    );
                  });
            },
            child: Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text("Material Alrt Show Dilog"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
