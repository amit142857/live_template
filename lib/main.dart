import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'itemsProvider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "StateManagement",
      home: ChangeNotifierProvider.value(
          value: ItemsProvider(),
          child: HomePage(),
      )
    );
  }
}

class HomePage extends StatelessWidget {
  TextEditingController _textEditingController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    print("Method built");
    final itemProvider = Provider.of<ItemsProvider>(context , listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text("State Management"),
      ),
      body: Container(
        child: Column(
          children: <Widget> [
            TextField(
              decoration: InputDecoration(
                labelText: "Enter item"
              ),
              controller: _textEditingController,
              autofocus: true,
            ),
            RaisedButton(
              onPressed: () {
                if (_textEditingController.text.isNotEmpty) {
                  itemProvider.addItems(_textEditingController.text);
                }
              },
              child: Text("Add Items"),
            ),
            Consumer<ItemsProvider>(
              builder: (_, data, __) => Expanded(
                child: ListView.builder(
                  itemCount: data.getItemData.length,
                  itemBuilder: (_ , index) => ListTile(
                    onTap: () {
                      data.incrementCount(index);
                    },
                    title: Text("${data.getItemData[index]['title']}"),
                    trailing: CircleAvatar(
                      child: Text("${data.getItemData[index]['count']}"),
                    ),
                  ),
                ),
              )
            ),
          ],
        )
      ),
    );
  }
}



