import 'package:flutter/material.dart';

class Lacture05 extends StatefulWidget {
  const Lacture05({super.key});

  @override
  State<Lacture05> createState() => _Lacture05State();
}

class _Lacture05State extends State<Lacture05> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
        ),
        drawer: Drawer(
          // width: 100,
          // backgroundColor: Colors.grey,
          child: ListView(
            children: [
              DrawerHeader(
                child: Text('data'),
                decoration: BoxDecoration(color: Colors.yellow),
              ),
              ListTile(
                title: Text("setting"),
                subtitle: Text('data'),
                leading: Icon(Icons.settings),
                trailing: Icon(Icons.arrow_forward_ios),
                iconColor: Colors.red,
                // isThreeLine: true,
                // hoverColor: Colors.black,
              ),
              ListTile(
                title: Text("setting"),
                subtitle: Text('data'),
                leading: Icon(Icons.settings),
                trailing: Icon(Icons.arrow_forward_ios),
                iconColor: Colors.red,
                // isThreeLine: true,
                // hoverColor: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
