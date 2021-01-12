import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(
  ));
}

class MyApp extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    final title = 'Long List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, index) {
            return ListTile(
              title: Text('${items[index]}'),
              leading: CircleAvatar(
                backgroundImage: AssetImage("Images/amit.jpg"),
              ),
              trailing: Text("${index} item"),
            );
          },
        ),
      ),
    );
  }
}