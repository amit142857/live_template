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
  void _showBottom(){
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context){
        return Container(
          padding: EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget> [
              Text("This is bottom sheet",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 23
                ),
              ),
              Spacer(),
              RaisedButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Close'),
              )
            ],
          ),
        );
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
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
                  onPressed: () => _showBottom(),
                  child: Text("Show bottom sheet"),
                )
            ],
          ),
        ),
      )

    );
  }


}
