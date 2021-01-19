import 'package:flutter/material.dart';
class Tabbar extends StatefulWidget {
  @override
  _TabbarState createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            bottom: TabBar(
                unselectedLabelColor: Colors.redAccent,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.redAccent, Colors.orangeAccent]),
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.redAccent),
                tabs: [
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("APPS"),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("MOVIES"),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("GAMES"),
                    ),
                  ),
                ]),
          ),
          body: TabBarView(children: [
            Icon(Icons.apps),
            Icon(Icons.movie),
            Icon(Icons.games),
          ]),
        )
    );

  }
}
