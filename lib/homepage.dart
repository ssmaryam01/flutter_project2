import 'package:flutter/material.dart';
import 'package:flutter_project2/detailpage.dart';
import 'package:flutter_project2/halaman3.dart';

class HomePage extends StatelessWidget {
  final String nama = "Memey";
  final String umur = "17";
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman 1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                   MaterialPageRoute(builder: (context) => Detailpage(nama: nama, umur: umur)),
                   );
                }, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 90, 24, 19),
                ),
                 child: const Text("Pergi Ke Halaman 2", style: TextStyle(color: Colors.white),),
                 ),
                 const SizedBox(height: 10),
                 ElevatedButton(
                  onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: 
                    (context) =>Halaman3()),
                  );
                 }, 
                 style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 90, 24, 19),
                 ),
                 child: const Text("Pergi Ke Halaman 3", style: TextStyle(color: Colors.white),),
                 ),
          ],
        ),
      ),
    );
  }
}