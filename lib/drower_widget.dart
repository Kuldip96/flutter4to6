import 'package:flutter/material.dart';

class DrowerWidget extends StatefulWidget {
  const DrowerWidget({super.key});

  @override
  State<DrowerWidget> createState() => _DrowerWidgetState();
}

class _DrowerWidgetState extends State<DrowerWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
        ),
        drawer: Drawer(
          child: ListView(
            children: const [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                child: Column(
                  children: [
                    Text('data'),
                    Icon(
                      Icons.add,
                    ),
                  ],
                ),
              ),
              Text('data'),
              ListTile(
                title: Text('Name'),
              ),
              ListTile(
                title: Text('Name'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
