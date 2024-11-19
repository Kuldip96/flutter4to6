import 'package:flutter/material.dart';

class Lacture11 extends StatefulWidget {
  const Lacture11({super.key});

  @override
  State<Lacture11> createState() => _Lacture11State();
}

class _Lacture11State extends State<Lacture11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      //   body: ListView.separated(
      //       itemBuilder: (context, index) {
      //         return Container(
      //           height: 50,
      //           color: Colors.yellow,
      //           child: Center(child: Text(index.toString())),
      //         );
      //       },
      //       separatorBuilder: (context, index) {
      //         return Divider();
      //       },
      //       itemCount: 5),
      // );
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          crossAxisSpacing: 10,
          mainAxisExtent: 200,
          mainAxisSpacing: 10,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.pink,
            child: Center(
              child: Text(index.toString()),
            ),
          );
        },
      ),
    );
  }
}
