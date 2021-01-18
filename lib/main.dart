

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

class Choice{
  final String Title;
  final IconData Icon;

  const Choice({this.Title, this.Icon});
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {

  TabController _controller;
  List<Choice> _items = const <Choice>[
    const Choice(Title: "Car", Icon: Icons.directions_car),
    const Choice(Title: "Bicycle", Icon: Icons.directions_bike),
    const Choice(Title: "Boat", Icon: Icons.directions_boat),
    const Choice(Title: "Bus", Icon: Icons.directions_bus),
    const Choice(Title: "Train", Icon: Icons.directions_train),
    const Choice(Title: "Walk", Icon: Icons.directions_walk),

  ];
  @override
  void initState() {
    _controller = TabController(
      length: _items.length,
      vsync: this,
    );
  }


  @override



  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Narendra Memorial English School"),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(48),
          child: Theme(
            data: Theme.of(context).copyWith(accentColor: Colors.white),
            child: Container(
              height: 48,
              alignment: Alignment.center,
              child: TabPageSelector(
                controller: _controller,
              )
            )
          )
        )
      ),
      body: TabBarView(
        controller: _controller,
        children: _items.map((Choice item){
          return Container(
            padding: EdgeInsets.all(25),
            child: Center(
              child: Column(
                children:<Widget> [
                  new Text(item.Title),
                  new Icon(item.Icon, size: 120.0,)
                ],
              ),
            ),
          );
        }).toList(),
      )
    );
  }


}
