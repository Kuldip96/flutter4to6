import 'package:demoapp/lacture02.dart';
import 'package:flutter/material.dart';

class Lacture01 extends StatefulWidget {
  const Lacture01({super.key});

  @override
  State<Lacture01> createState() => _Lacture01State();
}

class _Lacture01State extends State<Lacture01> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.red,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.add),
                  Text(
                    'AppBar',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.person)
                ],
              ),
            ),
            Container(
              height: 300,
              width: double.infinity,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.pink,
                image: const DecorationImage(
                    image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuNw1fDzeYGH2BFi4ufuCv2EORvqxoEMDdoA&s',
                    ),
                    fit: BoxFit.fill),
              ),

              child: const Text(
                'data',
                style: TextStyle(fontSize: 30, color: Colors.yellow),
              ),
              // child: Image.network(
              //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuNw1fDzeYGH2BFi4ufuCv2EORvqxoEMDdoA&s',
              //   fit: BoxFit.fill,
              //   color: Color(0xff96781E),
              //   colorBlendMode: BlendMode.darken,
              //   // alignment: Alignment.bottomCenter,
              //   // color: Colors.red,
              //   // opacity: Opacity(opacity: ),
              // ),
            ),
            Image.asset('images/images.png'),
            ElevatedButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) {
                  //       return Lacture02();
                  //     },
                  //   ),
                  // );
                  Navigator.pushNamed(context, 'lacture2');
                },
                child: Text('Next'))
          ],
        ),
      ),
    );
  }
}
