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
              const DrawerHeader(
                child: Text('data'),
                decoration: BoxDecoration(color: Colors.yellow),
              ),
              const ListTile(
                title: Text("setting"),
                subtitle: Text('data'),
                leading: Icon(Icons.settings),
                trailing: Icon(Icons.arrow_forward_ios),
                iconColor: Colors.red,
                // isThreeLine: true,
                // hoverColor: Colors.black,
              ),
              const ListTile(
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
        body: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'data',
              style: TextStyle(fontSize: 30),
            ),
            Divider(
              color: Colors.red,
              endIndent: 30,
              indent: 30,
              height: 10,
              thickness: 0.5,
            ),
            Text(
              'data',
              style: TextStyle(fontSize: 30),
            ),
            Divider(),
            Text(
              'data',
              style: TextStyle(fontSize: 30),
            ),
            Divider(),
            Text(
              'data',
              style: TextStyle(fontSize: 30),
            ),
            Divider(),
            Text(
              'data',
              style: TextStyle(fontSize: 30),
            ),
            Divider(),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('data'),
                Spacer(),
                Text('data'),
                Spacer(
                  
                ),
                Text('data'),
                Text('data'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
