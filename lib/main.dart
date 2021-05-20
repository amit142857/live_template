import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {

  final style = ElevatedButton.styleFrom(primary: Colors.blue , onPrimary: Colors.white);

  void _launch(String urlString) async {
    if(await canLaunch(urlString)) {
      await launch(urlString);
    } else {
      throw 'Could not launch Url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name here'),
      ),
      backgroundColor: Colors.grey,
      body: new Container(
          padding: new EdgeInsets.all(32.0),
          child: new Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  height: 160,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                      image: AssetImage('Images/amit.jpg'),
                      fit: BoxFit.contain
                    ),
                      border: Border.all(color: Colors.blueAccent , width: 5.0)
                  ),
                ),
                Text("Amit Yadav" ,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
                  textAlign: TextAlign.center,
                ),
                Text("Sr. Flutter Developer" ,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                  textAlign: TextAlign.center,
                ),
                Text("Alex Alexa Software Solutions PVT. LTD" ,
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                  ),
                  textAlign: TextAlign.center,
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ElevatedButton( style: style, onPressed: () => _launch('tel:981-599-9197'), child: Icon(Icons.call)),
                    ElevatedButton(style: style,onPressed: () => _launch('mailto:ydvamit82@gmail.com'), child: Icon(Icons.mail),),
                    ElevatedButton(style: style,onPressed: () => _launch('sms:981-599-9197'), child: Icon(Icons.mark_chat_unread),),
                  ],
                ),
                  SizedBox(
                    height: 20,
                  ),
                Column(
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                              image: AssetImage('Images/laxmi.jpg'),
                              fit: BoxFit.contain
                          ),
                          border: Border.all(color: Colors.blueAccent , width: 5.0)
                      ),
                    ),
                    Text("Laxmi Mahato" ,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text("Sr. Java Developer" ,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text("Alex Alexa Software Solutions PVT. LTD" ,
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new ElevatedButton(
                          style: style,
                          onPressed:() => _launch('tel:981-797-3974'), child: Icon(Icons.call),),
                        new ElevatedButton(
                          style: style,
                          onPressed:() => _launch('mailto:laxmi.mahato.lm.9803@gmail.com') , child: Icon(Icons.mail),),
                        new ElevatedButton(
                          style: style,
                          onPressed:() => _launch('sms:981-797-3974'), child: Icon(Icons.mark_chat_unread),),
                      ],
                    ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/amit.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Scaffold(
                backgroundColor: Colors.transparent,
                body: ListView(
                  children: <Widget>[
                    Text("Hello there")
                  ],
                ),
              ),
            ),
                    ],
                  ),
              ],
            ),
          )
      ),
    );
  }
}