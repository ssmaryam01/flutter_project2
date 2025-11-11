import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 1;

  void increment(){
    setState(() {
      counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Counter"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Text("Nilai : $counter", style: const TextStyle(color: Color.fromARGB(255, 90, 24, 19), fontWeight: FontWeight.bold),),
           SizedBox(height: 10),
            ElevatedButton(
              onPressed: increment, 
              style: ElevatedButton.styleFrom(backgroundColor:  const Color.fromARGB(255, 90, 24, 19)),
              child: const Text("Tambah Nilai", style: TextStyle(color: Colors.white),))
          ],
        ),
      ),
    );
  }
}