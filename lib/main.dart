import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';


void main() {
  runApp(new MaterialApp(
    home: Home(),
  ));
}


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class AnimatedLogo extends AnimatedWidget{

  static final _opacityTween = Tween<double>(begin: 0.1 , end: 1.0);
  static final _sizeTween = Tween<double>(begin: 0.0 , end: 300.0);
  static final _rotateTween = Tween<double>(begin: 0.0 , end: 12.0);

  AnimatedLogo({Key key, Animation<double> animation}) : super (key: key, listenable: animation);

  Widget build(BuildContext context){
    final Animation<double> animation = listenable;
    
    return Center(
      child: Transform.rotate(angle: _rotateTween.evaluate(animation),
      child: Opacity(opacity: _opacityTween.evaluate(animation),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        height: _sizeTween.evaluate(animation),
        width: _sizeTween.evaluate(animation),
        child: FlutterLogo(),
      ),
      ),
      ),
    );
  }
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  Animation animation;
  AnimationController controller;


  @override
  void initState() {
    super.initState();

    controller = AnimationController(duration: const Duration(milliseconds: 3000), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);

    animation.addStatusListener(listener);
    controller.forward();
  }

  void listener (AnimationStatus status) {
    if(status == AnimationStatus.completed) {
      controller.reverse();
    } else if (status == AnimationStatus.dismissed){
      controller.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
          child: AnimatedLogo(animation: animation),
      ),
    );
  }
}