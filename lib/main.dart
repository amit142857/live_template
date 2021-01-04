import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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

class _MyAppState extends State<MyApp> {
  List<BottomNavigationBarItem> _items;
  String _value = "";
  int _index = 0;

  @override
  void initState() {
  _items = List();
  _items.add(BottomNavigationBarItem(
    icon: Icon(Icons.person),
    // ignore: deprecated_member_use
    title: Text("People")
  )
  );
  _items.add(BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      // ignore: deprecated_member_use
      title: Text("Setting")
  )
  );
  _items.add(BottomNavigationBarItem(
      icon: Icon(Icons.info),
      // ignore: deprecated_member_use
      title: Text("About")
  )
  );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title:new Text("Name here"),
        backgroundColor: Colors.red,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _items,
        fixedColor: Colors.blue,
        backgroundColor: Colors.pink[50],
        currentIndex: _index,
        onTap: (int item){
          setState(() {
            _index = item;
            _value = _index.toString();
          });
        }
      ),

      body: Container(
        padding: EdgeInsets.all(32),
        child: Center(
          child: Column(
            children:<Widget> [
              Text(_value,
              style: TextStyle(
                fontSize: 37,
                fontWeight: FontWeight.bold
              ),
              ),
            ],
          ),
        ),
      )

    );
  }


}
