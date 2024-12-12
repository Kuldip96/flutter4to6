import 'package:flutter/material.dart';

class MediaqueyWidget extends StatefulWidget {
  const MediaqueyWidget({super.key});

  @override
  State<MediaqueyWidget> createState() => _MediaqueyWidgetState();
}

class _MediaqueyWidgetState extends State<MediaqueyWidget> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
      ),
      body: Column(
        children: [
          Container(
            height: 0.100 * height,
            width: 0.100 * width,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
