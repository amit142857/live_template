import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {

  Animation animation;
  AnimationController controller;


  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: const Duration(milliseconds: 5000),
      vsync: this
    );

    final CurvedAnimation curve = CurvedAnimation(parent: controller, curve:Curves.easeIn);
    animation = Tween(begin: 100.0 , end: 300.0).animate(curve);
    animation.addStatusListener(listener);
    controller.forward();
  }

  void listener (AnimationStatus status) {
    if(status == AnimationStatus.completed){
      controller.reverse();
    } else if(status == AnimationStatus.dismissed){
      controller.forward();
    }
    //this code here animates the logo back and forth in itsd own without depending upon any external library.
  }

  Widget builder(BuildContext context , Widget child) {
    return Container(
      height: animation.value,
      width: animation.value,
      child: FlutterLogo(),
    );
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
          child: AnimatedBuilder(
            animation: animation,
            builder: builder,
          )
        ),
      ),
    );
  }
}