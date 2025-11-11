import 'package:flutter/material.dart';
import 'package:flutter_project2/halaman3.dart';

class Detailpage extends StatelessWidget {
  final String nama;
  final String umur;
  const Detailpage({super.key, required this.nama, required this.umur});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Halaman Detail")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Anyeong All Namaku $nama"),
            SizedBox(height: 10),
            Text("Umurku $umur"),
            SizedBox(height: 10,),
            ElevatedButton(
              onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Kembali Ke Halaman Sebelumnya"),
            ),
            SizedBox(height: 10),
            ElevatedButton(onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => Halaman3()
                  ));
            }, child: const Text("Pergi Ke Halaman 3"),
            ),
          ],
        ),
      ),
    );
  }
}