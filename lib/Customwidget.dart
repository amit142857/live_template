import 'package:flutter/material.dart';

class Custom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children:<Widget> [
        Image.asset("Images/amit.jpg"),
        SizedBox(height: 20),
        Image.asset("Images/scl2.jpg"),
        SizedBox(height: 20),
        Image.asset("Images/scl3.jpg"),
        SizedBox(height: 20),
        Image.asset("Images/scl4.jpg"),
        SizedBox(height: 20),
        Image.asset("Images/scl5.jpg"),
        SizedBox(height: 20),
        Image.asset("Images/scl6.jpg"),
      ],
    );
  }
}
