import 'package:flutter/material.dart';

class RowColumn extends StatefulWidget {
  const RowColumn({super.key});

  @override
  State<RowColumn> createState() => _RowColumnState();
}

class _RowColumnState extends State<RowColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          // Container(
          //   height: 50,
          //   width: 100,
          //   color: Colors.green,
          // ),
          // Container(
          //   height: 50,
          //   width: 100,
          //   color: Colors.yellow,
          // ),
          // Container(
          //   height: 50,
          //   width: 100,
          //   color: Colors.blue,
          // ),
          //   ],
          // ),
          Container(
            height: 50,
            width: 100,
            color: Colors.green,
            child: Text(
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              'da',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                //  letterSpacing: 5,
              ),
            ),
          ),
          Container(
            height: 50,
            width: 100,
            color: Colors.yellow,
            child: Icon(
              Icons.abc,
              size: 40,
              
            ),
          ),
          Container(
            height: 50,
            width: 100,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
