import 'package:flutter/material.dart';

class CommanContainer extends StatelessWidget {
  final String text;
  final double? hightt;
  final double? wigth;
  final Color? color;
  final BorderRadius? borderRadius;
  final Image? images;
  const CommanContainer(
      {super.key,
      required this.text,
      this.hightt,
      this.wigth,
      this.color,
      this.borderRadius,
      this.images});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: hightt ?? 100,
      width: wigth ?? double.infinity,
      decoration: BoxDecoration(
        color: color ?? Colors.grey,
        borderRadius: borderRadius ?? BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text),
        ],
      ),
    );
  }
}
