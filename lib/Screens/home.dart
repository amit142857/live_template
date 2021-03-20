import 'package:flutter/material.dart';
import 'package:live_template/Screens/second.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
              Text("Welcome to the Home"),
              RaisedButton(onPressed:() => Navigator.of(context).pushNamedAndRemoveUntil('/Second', (Route<dynamic> route) => true),
                  //if the boolean value is made false it hides all the routes and vice versa
                  //pushnamedandremoveuntil is used to hide the route
                  child: Text("Next")),
              SizedBox(
                height: 100,
              ),
              RaisedButton(onPressed:() => Navigator.of(context).pushNamed("/Home"),
                  child: Icon(Icons.autorenew)
              ),
              RaisedButton(onPressed:() => Navigator.of(context).pushNamed("/Second"),
                  child: Text("Goto page 2")),
              RaisedButton(onPressed:() => Navigator.of(context).pushNamed("/Third"),
                  child: Text("Goto page 3")),
            ],
          ),
        ),
      ),
    );
  }
}
