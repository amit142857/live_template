import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Home()));
}

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
              Container(
                  width: 200,
                  height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('Images/amit.jpg'),
                    fit: BoxFit.fill,
                  ),
                  border: Border.all(color: Colors.greenAccent , width: 5.0),
                  gradient: RadialGradient(colors: <Color>[Colors.greenAccent , Colors.green])
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}