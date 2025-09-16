 import 'package:flutter/material.dart';

class LayoutHorizontal extends StatelessWidget {
  const LayoutHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView Horizontal')),
      body: SizedBox(
        height: 150,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(width: 160, color: Colors.pink),
            Container(width: 160, color: const Color.fromARGB(255, 254, 221, 232)),
            Container(width: 160, color: Colors.pink),
            Container(width: 160, color: const Color.fromARGB(255, 254, 221, 232)),
            Container(width: 160, color: Colors.pink),
          ],
        ),
      ),
    );
  }
}
 