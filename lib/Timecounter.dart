import 'package:flutter/material.dart';
import 'dart:async';
import 'package:live_template/Timedisplay.dart';


class TimeCounter extends StatefulWidget {
  @override
  _TimeCounterState createState() => _TimeCounterState();
}

class _TimeCounterState extends State<TimeCounter> {

  Stopwatch _watch;
  Timer _timer;
  Duration _duration;

  void _onStart() {
    setState(() {
      _watch = Stopwatch();
      _timer = Timer.periodic(Duration(milliseconds: 250), _onTimeout );
    });
    _watch.start();
  }

  void _onStop() {
    _timer.cancel();
    _watch.stop();
  }

  void _onTimeout(Timer timer){
    if(!_watch.isRunning) return;
    setState(() => _duration = _watch.elapsed
    );
  }

  void _onCLear(Duration value) {
    setState(() {
      _duration = Duration();
    });
  }


  @override
  void initState() {
    _duration = Duration();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          children: <Widget> [
            TimeDisplay(
              color: Colors.red,
              duration: _duration,
              onClear: _onCLear,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: RaisedButton(
                    onPressed: _onStart,
                    child: Text("Start"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: RaisedButton(
                    onPressed: _onStop,
                    child: Text("Stop"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
