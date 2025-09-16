import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('List View')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text('Menu aplikasi', style: TextStyle(fontSize: 18)),
            const ListTile(leading: Icon(Icons.map), title: Text('Map')),
            const ListTile(leading: Icon(Icons.photo_album), title: Text('Album')),
            const ListTile(leading: Icon(Icons.phone), title: Text('Phone')),

            const Text('Warna Horizontal', style: TextStyle(fontSize: 18)),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(width: 160, color: const Color.fromARGB(255, 255, 1, 3)),
                  Container(width: 160, color: const Color(0xFFFFDDE8)),
                  Container(width: 160, color: const Color.fromARGB(255, 255, 1, 2)),
                  Container(width: 160, color: const Color(0xFFFFDDE8)),
                  Container(width: 160, color: const Color.fromARGB(255, 255, 1, 1)),
                ],
              ),
            ),

            const Text('Grid Item', style: TextStyle(fontSize: 18)),
            GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: List.generate(6, (index) {
                  return Center(
                      child: Text('Item $index',style: const TextStyle(fontSize: 20),
                      ),
                  );
                }),
              ),
          ],
        ),
      ),
    );
  }
}