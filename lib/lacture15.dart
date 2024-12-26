import 'package:flutter/material.dart';

class Lacture15 extends StatefulWidget {
  const Lacture15({super.key});

  @override
  State<Lacture15> createState() => _Lacture15State();
}

class _Lacture15State extends State<Lacture15> {
  final List<Map<String, String>> details = [
    {'title': 'sofa', 'image': 'images/Media (1).jpg', 'price': '50'},
    {'title': 'bed', 'image': 'images/Media (1).png', 'price': '10'},
    {'title': 'chair', 'image': 'images/Media.jpg', 'price': '20'},
    {'title': 'table', 'image': 'images/Media.png', 'price': '70'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: details.map((toElement) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                              image: toElement['image'].toString(),
                              title: toElement['title'].toString(),
                              subtitle: toElement['price'].toString(),
                            )));
              },
              child: Container(
                decoration: BoxDecoration(border: Border.all()),
                child: ListTile(
                  title: Text(toElement['title'].toString()),
                  leading: Image.asset(toElement['image'].toString()),
                  subtitle: Text("\$${toElement['price'].toString()}"),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  final String? image;
  final String? title;
  final String? subtitle;
  const DetailsScreen({super.key, this.image, this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 500,
            width: double.infinity,
            child: Image.asset(
              image ?? "",
              fit: BoxFit.fill,
            ),
          ),
          Row(
            children: [
              Text(title ?? "null"),
              Spacer(),
              Text("\$${subtitle.toString()}"),
            ],
          ),
        ],
      ),
    );
  }
}
