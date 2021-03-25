import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screens/counterprovider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CounterProvider>(
      create: (context) => CounterProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "State Management",
        home: CounterApp(),
      ),
    );
  }
}

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State Management"),
        centerTitle: true,
      ),
      body: Center(
        child: Consumer<CounterProvider>(
          builder: (context , counter , child){
            return Text("You pressed the button ${counter.getCount} times." , style: TextStyle( fontSize: 20),

            );
          }
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<CounterProvider>(context , listen: false).incrementCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
