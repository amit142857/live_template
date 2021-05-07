import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _painter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final radius = 150.0;
    final Offset offset = Offset(0.0 , 0.0);
    final Paint paint = Paint()
      ..isAntiAlias = true
      ..strokeWidth = 15.0
      ..color = Colors.brown[500]
      ..style = PaintingStyle.stroke; 
    // these .. means we are using the last object, in this case the object is Paint()
    final Offset bodystart = Offset(0.0, 150.0);
    final Offset bodyend = Offset(0.0, -150.0);
    final Offset start = Offset(-150, 0);
    final Offset end =  Offset(150 , 0);

    canvas.drawCircle(offset, radius, paint);
    canvas.drawLine(bodystart, bodyend, paint);
    canvas.drawLine(start, end, paint);

    final Rect rect =  new Rect.fromCircle(center: offset, radius: 40.0);
    final Paint rectPaint = new Paint()
      ..isAntiAlias = true
      ..strokeWidth = 15.0
      ..color = Colors.red
      ..style = PaintingStyle.stroke;

    canvas.drawRect(rect, rectPaint);

  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(32),
          child: Center(
            child: Column(
              children:<Widget> [
                Text("Welcome to the Home" , style: TextStyle(
                  fontSize: 30 , fontWeight:FontWeight.bold)),
                SizedBox(
                  height: 300,
                ),
                CustomPaint(
                  painter: _painter(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}