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
  final GlobalKey<ScaffoldState> _scaffoldstate = new GlobalKey<ScaffoldState>();

  void _showbar() {
    // ignore: deprecated_member_use
    _scaffoldstate.currentState.showSnackBar(
        new SnackBar(
          content: Text("This is snackbar"),duration: Duration(milliseconds: 900),));
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldstate,
      appBar: new AppBar(
        title:new Text("Name here"),
        backgroundColor: Colors.red,
      ),


      body: Container(
        padding: EdgeInsets.all(32),
        child: Center(
          child: Column(
            children:<Widget> [
              RaisedButton(
                onPressed: _showbar,
                child: Text('Show snackbar'),
              )
            ],
          ),
        ),
      )

    );
  }


}
