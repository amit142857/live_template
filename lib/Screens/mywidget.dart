import 'package:flutter/material.dart';


class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget> [
          Text("Click to navigate"),
          SizedBox(
            height: 30,
          ),
          InkWell(
            child: Icon(Icons.home),
          onTap:() => Navigator.of(context).pushNamed('/Home')
          ),
          SizedBox(
            height: 30,
          ),
          RaisedButton(
            padding: EdgeInsets.all(5),
            onPressed: () => Navigator.of(context).pushNamed('/Home'),
            child: Icon(Icons.home)
          )
        ],
      ),
    );
  }
}
