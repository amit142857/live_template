import 'package:flutter/material.dart';

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
  List<Step> _steps;
  int _current;


  @override
  void initState() {
    _current = 0;

    _steps = <Step>[
      Step(
        title:Text("Step 1") ,
        content: Column(
          children:<Widget> [
            Text("Computer teacher"),
            Image.asset("Images/amit.jpg"),
          ],
        ),
        isActive: true
      ),
      Step(
          title:Text("Step 2") ,
          content:Column(
            children: <Widget> [
              Text("Batch of 2074"),
              Image.asset("Images/scl1.jpg")
            ],
          ),
          isActive: true
      ),
      Step(
          title:Text("Step 3") ,
          content:Column(
            children: <Widget> [
              Text("Dipesh and Ishwor"),
              Image.asset("Images/scl2.jpg")
            ],
          ),
          isActive: true
      ),
      Step(
          title:Text("Step 4") ,
          content:Column(
            children: <Widget> [
              Text("NMESS Sports team"),
              Image.asset("Images/scl3.jpg")
            ],
          ),
          isActive: true
      ),
      Step(
          title:Text("Step 5") ,
          content:Column(
            children: <Widget> [
              Text("NMESS Soccer Team"),
              Image.asset("Images/scl4.jpg")
            ],
          ),
          isActive: true
      ),
      Step(
          title:Text("Step 6") ,
          content:Column(
            children: <Widget> [
              Text("NMESS Dance Team"),
              Image.asset("Images/scl5.jpg")
            ],
          ),
          isActive: true
      ),
      Step(
          title:Text("Step 7") ,
          content:Column(
            children: <Widget> [
              Text("Prize distribution with Principal"),
              Image.asset("Images/scl6.jpg")
            ],
          ),
          isActive: true
      ),

    ];
  }

  void _stepContinue() {
    setState(() {
      _current++;
      if (_current >= _steps.length) _current = _steps.length - 1;
    });
  }

  void _stepCancel() {
    setState(() {
      _current++;
      if (_current > 0) _current = 0;
    });
  }

  void _stepTap(int index){
    setState(() {
      _current = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Name Here"),
      ),
      body: Container(
          padding: EdgeInsets.all(10),
          child: Center(
            child: Stepper(
              steps: _steps,
              type: StepperType.vertical,
              currentStep: _current,
              onStepCancel: _stepCancel,
              onStepContinue: _stepContinue,
              onStepTapped: _stepTap,
            ),
          )
      ),
    );
  }
}
