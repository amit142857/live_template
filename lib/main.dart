import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Grid View",
      home: GridViewApp(),
    );
  }
}
class GridViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget> [
          Card(
            color: Colors.blue,
            child: Stack(
              children:<Widget> [
                Center(
                  child: Icon(Icons.account_circle , size: 150, color: Colors.white),
                ),
                Container(
                  margin: EdgeInsets.only(top: 170 , left: 100),
                  child: Text(
                      "Account Circle" , style: TextStyle(fontSize: 14 , color: Colors.white)),
                )
              ],
            ),
          ),
          Card(
            color: Colors.blueGrey,
            child: Stack(
              children:<Widget> [
                Center(
                  child: Icon(Icons.account_balance , size: 150, color: Colors.white),
                ),
                Container(
                  margin: EdgeInsets.only(top: 170 , left: 100),
                  child: Text(
                      "Rs. 14,56,000" , style: TextStyle(fontSize: 14 , color: Colors.white)),
                )
              ],
            ),
          ),
          Card(
            color: Colors.blue,
            child: Stack(
              children:<Widget> [
                Center(
                  child: Icon(Icons.account_circle , size: 150, color: Colors.white),
                ),
                Container(
                  margin: EdgeInsets.only(top: 170 , left: 100),
                  child: Text(
                      "Account Circle" , style: TextStyle(fontSize: 14 , color: Colors.white)),
                )
              ],
            ),
          ),
          Card(
            color: Colors.blue,
            child: Stack(
              children:<Widget> [
                Center(
                  child: Icon(Icons.account_circle , size: 150, color: Colors.white),
                ),
                Container(
                  margin: EdgeInsets.only(top: 170 , left: 100),
                  child: Text(
                      "Account Circle" , style: TextStyle(fontSize: 14 , color: Colors.white)),
                )
              ],
            ),
          ),
          Card(
            color: Colors.blue,
            child: Stack(
              children:<Widget> [
                Center(
                  child: Icon(Icons.account_circle , size: 150, color: Colors.white),
                ),
                Container(
                  margin: EdgeInsets.only(top: 170 , left: 100),
                  child: Text(
                      "Account Circle" , style: TextStyle(fontSize: 14 , color: Colors.white)),
                )
              ],
            ),
          ),
          Card(
            color: Colors.blue,
            child: Stack(
              children:<Widget> [
                Center(
                  child: Icon(Icons.account_circle , size: 150, color: Colors.white),
                ),
                Container(
                  margin: EdgeInsets.only(top: 170 , left: 100),
                  child: Text(
                      "Account Circle" , style: TextStyle(fontSize: 14 , color: Colors.white)),
                )
              ],
            ),
          ),
          Card(
            color: Colors.blue,
            child: Stack(
              children:<Widget> [
                Center(
                  child: Icon(Icons.account_circle , size: 150, color: Colors.white),
                ),
                Container(
                  margin: EdgeInsets.only(top: 170 , left: 100),
                  child: Text(
                      "Account Circle" , style: TextStyle(fontSize: 14 , color: Colors.white)),
                )
              ],
            ),
          ),
          Card(
            color: Colors.blue,
            child: Stack(
              children:<Widget> [
                Center(
                  child: Icon(Icons.account_circle , size: 150, color: Colors.white),
                ),
                Container(
                  margin: EdgeInsets.only(top: 170 , left: 100),
                  child: Text(
                      "Account Circle" , style: TextStyle(fontSize: 14 , color: Colors.white)),
                )
              ],
            ),
          ),Card(
            color: Colors.blue,
            child: Stack(
              children:<Widget> [
                Center(
                  child: Icon(Icons.account_circle , size: 150, color: Colors.white),
                ),
                Container(
                  margin: EdgeInsets.only(top: 170 , left: 100),
                  child: Text(
                      "Account Circle" , style: TextStyle(fontSize: 14 , color: Colors.white)),
                )
              ],
            ),
          ),
          Card(
            color: Colors.blue,
            child: Stack(
              children:<Widget> [
                Center(
                  child: Icon(Icons.account_circle , size: 150, color: Colors.white),
                ),
                Container(
                  margin: EdgeInsets.only(top: 170 , left: 100),
                  child: Text(
                      "Account Circle" , style: TextStyle(fontSize: 14 , color: Colors.white)),
                )
              ],
            ),
          ),
          Card(
            color: Colors.blue,
            child: Stack(
              children:<Widget> [
                Center(
                  child: Icon(Icons.account_circle , size: 150, color: Colors.white),
                ),
                Container(
                  margin: EdgeInsets.only(top: 170 , left: 100),
                  child: Text(
                      "Account Circle" , style: TextStyle(fontSize: 14 , color: Colors.white)),
                )
              ],
            ),
          ),
          Card(
            color: Colors.blue,
            child: Stack(
              children:<Widget> [
                Center(
                  child: Icon(Icons.account_circle , size: 150, color: Colors.white),
                ),
                Container(
                  margin: EdgeInsets.only(top: 170 , left: 100),
                  child: Text(
                      "Account Circle" , style: TextStyle(fontSize: 14 , color: Colors.white)),
                )
              ],
            ),
          ),
          Card(
            color: Colors.blue,
            child: Stack(
              children:<Widget> [
                Center(
                  child: Icon(Icons.account_circle , size: 150, color: Colors.white),
                ),
                Container(
                  margin: EdgeInsets.only(top: 170 , left: 100),
                  child: Text(
                      "Account Circle" , style: TextStyle(fontSize: 14 , color: Colors.white)),
                )
              ],
            ),
          ),
          Card(
            color: Colors.blue,
            child: Stack(
              children:<Widget> [
                Center(
                  child: Icon(Icons.account_circle , size: 150, color: Colors.white),
                ),
                Container(
                  margin: EdgeInsets.only(top: 170 , left: 100),
                  child: Text(
                      "Account Circle" , style: TextStyle(fontSize: 14 , color: Colors.white)),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}
