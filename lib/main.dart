import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _visible;


  @override
  void initState() {
    _visible = true;
  }

  void _toggleVisible() {
    setState(() {
      _visible = !_visible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Center(
          child: Column(
            children:<Widget> [
              Opacity(
                opacity: _visible ? 1.0 : 0.03,
                child: Text("Hey buddy"),
              ),
              RaisedButton(
                onPressed: _toggleVisible,
                child: Text("Toggle"),
              )
            ],
          ),
        ),
      ),
    );
  }
}