import 'dart:developer';

import 'package:flutter/material.dart';

class Lacture12 extends StatefulWidget {
  const Lacture12({super.key});

  @override
  State<Lacture12> createState() => _Lacture12State();
}

class _Lacture12State extends State<Lacture12> {
  int selectColor = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 100,
              child: TabBar(
                labelColor: Colors.red,
                onTap: (int value) {
                  setState(() {
                    log(value.toString());
                    selectColor = value;
                  });
                },
                dividerHeight: 0,
                indicator: const BoxDecoration(),
                tabs: [
                  Tab(
                    height: 70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("data"),
                        // Container(
                        //   height: 44,
                        //   width: 44,
                        //   decoration: BoxDecoration(
                        //     color:
                        //         selectColor == 0 ? Colors.black : Colors.grey,
                        //     borderRadius: BorderRadius.circular(12),
                        //   ),
                        //   child: Icon(
                        //     Icons.star,
                        //     color:
                        //         selectColor == 0 ? Colors.white : Colors.black,
                        //   ),
                        // ),
                        const Text('data'),
                      ],
                    ),
                  ),
                  Tab(
                    height: 70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 44,
                          width: 44,
                          decoration: BoxDecoration(
                            color:
                                selectColor == 1 ? Colors.black : Colors.grey,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            Icons.chair_alt,
                            color:
                                selectColor == 1 ? Colors.white : Colors.black,
                          ),
                        ),
                        const Text('data')
                      ],
                    ),
                  ),
                  Tab(
                    height: 70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 44,
                          width: 44,
                          decoration: BoxDecoration(
                            color:
                                selectColor == 2 ? Colors.black : Colors.grey,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            Icons.table_chart,
                            color:
                                selectColor == 2 ? Colors.white : Colors.black,
                          ),
                        ),
                        const Text('data')
                      ],
                    ),
                  ),
                  Tab(
                    height: 70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 44,
                          width: 44,
                          decoration: BoxDecoration(
                            color:
                                selectColor == 3 ? Colors.black : Colors.grey,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            Icons.bed,
                            color:
                                selectColor == 3 ? Colors.white : Colors.black,
                          ),
                        ),
                        const Text('data')
                      ],
                    ),
                  ),
                  Tab(
                    height: 70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 44,
                          width: 44,
                          decoration: BoxDecoration(
                            color:
                                selectColor == 4 ? Colors.black : Colors.grey,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            Icons.bed,
                            color:
                                selectColor == 4 ? Colors.white : Colors.black,
                          ),
                        ),
                        const Text(
                          'data',
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              child: TabBarView(children: [
                Center(
                  child: Text("It's cloudy here"),
                ),
                Center(
                  child: Text("It's rainy here"),
                ),
                Center(
                  child: Text("It's sunny here"),
                ),
                Center(
                  child: Text("It's sunny here"),
                ),
                Center(
                  child: Text("It's sunny here"),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
