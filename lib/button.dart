import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 206, 162, 146),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 250, 234, 228),
        title: const Text('Profile Memey',
        style: TextStyle(color: Color.fromARGB(255, 104, 82, 71),
        fontWeight: FontWeight.bold,
        fontSize: 12)),
      ),
      
      body: Padding(
        padding:const EdgeInsets.only(top: 10),
        child: Column(
        children: [
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(2000),
               child: Image.asset ('images/maryamau.jpeg'),
            ),
          ),
          const SizedBox(height: 7),
          const Text (
            'Siti Maryam',
            style: TextStyle(
             fontSize: 12,
             fontWeight: FontWeight.bold
             )
            ),

            const SizedBox(height: 10),
             const Text(
              'Siswi SMK YPC Tasikmalaya',
               style: TextStyle(
                fontSize: 10,
                 color: Colors.black
                 )
                ),

               const SizedBox(height: 25),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.white)),
                       onPressed: () {}, 
                       icon: const Icon(Icons.call, color: Color.fromARGB(255, 104, 87, 71)), 
                       label: const Text('Call', style: TextStyle(color: Colors.blueGrey))),
                  ElevatedButton.icon(
                    style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.white)),
                      onPressed: () {}, 
                      icon: const Icon(Icons.map, color: Color.fromARGB(255, 104, 82, 71)), 
                      label: const Text('Map', style: TextStyle(color: Colors.blueGrey),)),
                  ElevatedButton.icon(
                    style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.white)),
                    onPressed: () {}, 
                    icon: const Icon(Icons.share, color: Color.fromARGB(255, 104, 82, 71)), 
                    label: const Text('Share', style: TextStyle(color: Colors.blueGrey),)),
                ],
               )

            ],
          ),
        )
        
      );
  }
}