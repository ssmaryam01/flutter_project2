import 'package:flutter/material.dart';
import 'package:flutter_project2/ItemList.dart';
import 'package:flutter_project2/widget.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title:"Aplikasi Flutter",
      debugShowCheckedModeBanner: false,
      home:Homepage()
      );
  }
}
