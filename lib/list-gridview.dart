import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListGridView extends StatelessWidget {
  const ListGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List & Grid View'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Menu Aplikasi',
            style: TextStyle(color: Color.fromARGB(255, 196, 90, 125), fontWeight: FontWeight.bold),
            ),
            const ListTile(leading: Icon(Icons.map), title: Text('Map')),
            const ListTile(leading: Icon(Icons.call), title: Text('Call')),
            const ListTile(leading: Icon(Icons.share), title: Text('Share')
            ),
            //warna
            const Text('Warna horizontal',
            style: TextStyle(color: Color.fromARGB(255, 196, 90, 125), fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(width: 100, color: const Color.fromARGB(255, 243, 88, 140),),
                  Container(width: 100, color: const Color.fromARGB(255, 233, 114, 153),),
                  Container(width: 100, color: const Color.fromARGB(255, 243, 143, 177)),
                  Container(width: 100, color: const Color.fromARGB(255, 247, 185, 205),),
                ],
              ),
            ),
            //grid view
            const Text('Grid Item',
            style: TextStyle(color: Color.fromARGB(255, 243, 143, 177), fontWeight: FontWeight.bold),
            ),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              children: 
                List.generate(6, (index) {
                  return Center(
                    child: Text('List Item $index', style: const TextStyle(color: Color.fromARGB(255, 243, 88, 140))),
                  );
                }
              ) 
            )
          ],
        ),
      )
    );
  }
}