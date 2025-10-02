import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class  Spacedlist extends StatelessWidget {
  const Spacedlist({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    int itemCount = 4;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'List Panjang',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 85, 158, 87),
        centerTitle: true,
      ),
      body: LayoutBuilder(
        builder: (context, constraints){
          return SingleChildScrollView(   //agar bisa di scroll
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.stretch,  
              children: List.generate(
                itemCount, (index) =>  Card(
                  margin: EdgeInsets.all(16),
                  color: const Color.fromARGB(255, 136, 215, 139),
                  child: SizedBox(
                    height: 100,
                    child: Center(
                      child: Text(
                      'Item $index',
                      style: TextStyle(color: const Color.fromARGB(255, 3, 70, 255)),
                    ),
                    )
                  ),
                )
                )
            ),
            ),
          );
        }
      ),
    );
  }
}