import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
            children: const [
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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'data',
              style: TextStyle(fontSize: 30),
            ),
            const Divider(
              color: Colors.red,
              endIndent: 30,
              indent: 30,
              height: 10,
              thickness: 0.5,
            ),
            const Text(
              'data',
              style: TextStyle(fontSize: 30),
            ),
            const Divider(),
            const Text(
              'data',
              style: TextStyle(fontSize: 30),
            ),
            const Divider(),
            const Text(
              'data',
              style: TextStyle(fontSize: 30),
            ),
            const Divider(),
            const Text(
              'data',
              style: TextStyle(fontSize: 30),
            ),
            const Divider(),
            const Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('data'),
                // Spacer(),
                Divider(
                  color: Colors.red,
                ),
                Text('data'),
                Spacer(),
                Text('data'),
                const Text('data'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
              text: const TextSpan(
                  children: [
                    TextSpan(
                        text: "Read More",
                        style: TextStyle(color: Colors.brown, fontSize: 30)),
                  ],
                  style: TextStyle(color: Colors.black, fontSize: 30),
                  text:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. "),
            ),
          ],
        ),
      ),
    );
  }
}
