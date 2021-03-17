import 'package:flutter/material.dart';
import 'package:live_template/Tabbar%20view.dart';
import 'package:live_template/Timedisplay.dart';
import 'package:live_template/clock.dart';

class Custom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children:<Widget> [
        InkWell(child: Image.asset("Images/amit.jpg"),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Clock()))
        ),
        SizedBox(height: 20),
        InkWell(child: Image.asset("Images/scl2.jpg"),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Tabbar()))
        ),
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
