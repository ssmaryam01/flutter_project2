import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Saya'),
      ),
      body: Column(
        children: [
          Center(
            child: Image.asset
        ('images/aku (1).jpeg'),
          ),
          const Text('Siti Maryam', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          const Text('Siswi SMK YPC Tasikmalaya', style: TextStyle(fontSize: 12, color: Colors.blueAccent)),

          const SizedBox(height: 25),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
               children: [
                 Icon(Icons.call),
                  Text('call')
                 ],
              ),
              Column(
                children: [
                  Icon(Icons.share),
                  Text('share')
                ],
              ),
              Column(
                children: [
                  Icon(Icons.map),
                  Text('map')
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}