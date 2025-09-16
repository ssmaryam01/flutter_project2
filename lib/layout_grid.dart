import 'package:flutter/material.dart';

class LayoutGrid extends StatelessWidget {
  const LayoutGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GridView')),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(6, (index){
          return Center(
            child: Text('Item $index', style: TextStyle(fontSize: 20)),
          );
        }),
      ),
    );
  }
}