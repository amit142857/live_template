import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class MyItem{
  bool IsExpanded;
  final String header;
  final Widget body;

  MyItem(this.IsExpanded , this.header, this.body);
}

class _MyAppState extends State<MyApp> {

  List<MyItem> _items = new List<MyItem>();


  @override
  void initState() {
    for (int i = 1; i < 20; i++){
      _items.add(MyItem(
          false,
          "Press ${i}",
          Container(  //this is seen in the expanded widget
            padding: EdgeInsets.all(5),
            child: Text("This is expanded text")
          )
      ));
    }
  }

  ExpansionPanel _createitem(MyItem item){
    return ExpansionPanel(
      headerBuilder: (BuildContext context, bool IsExpanded){
        return Container(
          padding: EdgeInsets.all(10),
          child: Text("Please ${item.header}"),
        );
      },
      body: item.body,
      isExpanded: item.IsExpanded
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Name Here"),
      ),

      body: Container(
        padding: EdgeInsets.all(32),
        child: ListView(
          children:<Widget> [
            ExpansionPanelList(
              expansionCallback: (int index, bool IsExpanded){
                setState(() {
                  _items[index].IsExpanded =! _items[index].IsExpanded;
                });
              },
              children: _items.map(_createitem).toList(),
            )
          ],
        )
      ),
    );
  }


}

