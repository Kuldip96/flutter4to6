import 'package:flutter/material.dart';

class Lacture02 extends StatefulWidget {
  const Lacture02({super.key});

  @override
  State<Lacture02> createState() => _Lacture02State();
}

class _Lacture02State extends State<Lacture02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10),
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xffE4A38D),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Shop With us!',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      width: 180,
                      child: Text(
                        'Get 50% off on iteam',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        color: const Color(0xffE2BCAF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          'Shop Now',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'images/images.png',
                  scale: 1.5,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
