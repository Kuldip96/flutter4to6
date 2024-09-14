import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContainerScreen extends StatefulWidget {
  const ContainerScreen({super.key});

  @override
  State<ContainerScreen> createState() => _ContainerScreenState();
}

class _ContainerScreenState extends State<ContainerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          // alignment: Alignment.center,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.red,
            border: Border.all(
              color: Colors.black,
              width: 5,
              strokeAlign: BorderSide.strokeAlignOutside,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.black,
            //     offset: Offset(0, 10),
            //     blurRadius: 15,
            //   ),
            // ],
            // shape: BoxShape.circle,
            // gradient: LinearGradient(
            //   colors: [
            //     Colors.yellow,
            //     Colors.pink,
            //   ],
            //   begin: Alignment.topCenter,
            //   end: Alignment.bottomCenter,
            // ),
            image: DecorationImage(
              image: NetworkImage(
                  'https://images.pexels.com/photos/36762/scarlet-honeyeater-bird-red-feathers.jpg?auto=compress&cs=tinysrgb&w=600'),
            ),
          ),
          child: Text('data'),
        ),
      ),
    );
  }
}
