import 'package:flutter/cupertino.dart';
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
enum Animals{Cat, Dog, Cow, Lizard}
class _MyAppState extends State<MyApp> {

  Animals _selected = Animals.Cat;
  String _value = "Make a selection";
  List<PopupMenuEntry<Animals>> _items = new List<PopupMenuEntry<Animals>>();



  @override
  void initState() {
    for(Animals animal in Animals.values){
      _items.add(PopupMenuItem(
        child: Text(_getDisplay(animal),),
        value: animal,
        ),
      );
    }

  }

  void _onSelected(Animals animal){
    setState(() {
      _selected = animal;
      _value = "You selected ${_getDisplay(animal)}";
    });
  }

  String _getDisplay(Animals animal){
    int index = animal.toString().indexOf(".");
    index++;
    return animal.toString().substring(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Name Here"),
      ),

      body: Container(
        padding: EdgeInsets.all(32),
        child: Center(
          child: Row(
            children:<Widget> [
              Container(
                padding: EdgeInsets.all(5),
                child: Text(_value),
              ),
              PopupMenuButton<Animals>(
                child: Icon(Icons.arrow_drop_down),
                initialValue: Animals.Cat,
                onSelected: _onSelected,
                itemBuilder: (BuildContext context){
                  return _items;
                },
              )
            ],
          ),
        ),
      ),
    );
  }


}

