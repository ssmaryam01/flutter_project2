import 'package:flutter/material.dart';

class Halaman3 extends StatelessWidget {
  const Halaman3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ini halaman 3")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              Navigator.pop(context);
            }, child: const Text("Kembali Ke halaman Sebelumnya"))
          ],
        ),
      ),
    );
  }
}