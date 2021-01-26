import 'package:flutter/material.dart';

class Custom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is title"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          "Hello world",
          style: TextStyle(
            fontSize: 40,
          ),
          textAlign: TextAlign.center
        ),
      )
    );
  }
}
