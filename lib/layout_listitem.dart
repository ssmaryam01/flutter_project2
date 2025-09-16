import 'package:flutter/material.dart';

abstract class ListItem{
  Widget buildTitle(BuildContext context);
  Widget buildSubitle(BuildContext context);
}

class HeadingItem implements ListItem {
  final String heading;
  HeadingItem(this.heading);
  
  @override
  Widget buildTitle(BuildContext context){
    return Text(heading,style: TextStyle(color: const Color.fromARGB(255, 243, 2, 82), fontSize: 24));
  }

  @override
   Widget buildSubitle(BuildContext context){
    return const SizedBox.shrink();
  }
}

class MessageItem implements ListItem {
  final String sender;
  final String body;

  MessageItem(this.sender,this.body);

  @override
  Widget buildTitle(BuildContext context){
    return Text(sender);
  }

  @override
  Widget buildSubitle(BuildContext context){
    return Text(body);
  }
}

class LayoutListItem extends StatelessWidget {
  const LayoutListItem ({super.key});

  @override
  Widget build(BuildContext context) {

    final List<ListItem> items = List<ListItem>.generate(
      20,
      (d) => d % 6 == 0
      ? HeadingItem('Judul $d')
      : MessageItem('Nama $d', 'Kelas $d')
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('List dengan berbagai item'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context,index){
          final item = items[index];
          return ListTile(
            title: item.buildTitle(context),
            subtitle: item.buildSubitle(context),
          );
        },
      ),
    );
    
  }
}