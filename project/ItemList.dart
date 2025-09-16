import 'package:flutter/material.dart';

abstract class ListItem{
  Widget buildTitle(BuildContext context);
  Widget buildSubtitle(BuildContext context);
}

class HeadingItem implements ListItem {
  final String heading;
  HeadingItem(this.heading);

  @override
  Widget buildTitle(BuildContext context) {
    return Text(
      heading,
      style: const TextStyle(
        color: Colors.blue,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
  
  @override
  Widget buildSubtitle(BuildContext context) => const SizedBox.shrink();
}

class MessageItem implements ListItem {
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);

  @override
  Widget buildTitle(BuildContext context) {
    return Row(
      children: [
      const Icon(Icons.message, color: Colors.blue), // ikon di depan
      const SizedBox(width: 8),
      Text(sender),
      ],
    );
  }

  @override 
  Widget buildSubtitle(BuildContext context) => Text(body);
}

class ImageItem implements ListItem {
  final String imagePath;
  final String title;

  ImageItem(this.imagePath,this.title);

  @override
  Widget buildTitle(BuildContext context) => Text(title, style: const TextStyle(fontWeight: FontWeight.bold));

  @override
  Widget buildSubtitle(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(top: 4.0),
      child: Image.asset(
        imagePath,
        height: 50,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      );
  }
}

    class itemsall extends StatelessWidget {
  const itemsall({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ListItem> items = List<ListItem>.generate(30, (d){
      if (d % 5 == 0 ){
        return HeadingItem('Heading $d');
      }else if (d % 3 == 0){
        // ignore: unused_local_variable
        final imageIndex = (d ~/ 3) % 3 + 1 ;
        return ImageItem('images/meimei.jpeg', 'Image Item $d');
      }else{
        return MessageItem('sender Item $d', 'Message body $d');
      }
    });

    return Scaffold(
      appBar: AppBar(title: const Text('List dengan berbagai item')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index){
          final item = items[index];
          return Padding(padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
          child: Card(
            elevation: 2,
            child: ListTile(
              title: item.buildTitle(context),
              subtitle: item.buildSubtitle(context),
              contentPadding: const EdgeInsets.all(8),
            ),
          ));
        },
      ),
    );
  }
}
