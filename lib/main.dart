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
  bool _value1 = true;
  bool _value2 = false;

  void _value1Changed(bool value) => setState(() => _value1 = value);
  void _value2Changed(bool value) => setState(() => _value2 = value);


  String _value = "";

  void onChange(String value){
    setState(() =>
      _value = 'Change: ${value}'
    );
  }
  void onSubmit(String value){
    setState(() =>
      _value = 'Submit: ${value}'
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Name here"),
      ),
      drawer: Drawer(
        child: Center(
          child: ListView(
            children: <Widget> [
              UserAccountsDrawerHeader(
                accountName: Text("Amit Yadav"),
                accountEmail: Text("Ydvamit82@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  child: Container(
                    width: 300,
                    height: 250,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("Images/amit.jpg"),
                      )
                    ),
                  )
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text("Chat with us"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Setting"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.amp_stories_sharp),
                title: Text("About US"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Center(
          child: Column(
            children:<Widget> [
              Text("$_value"),
              TextField(
                decoration: InputDecoration(
                  labelText: "Label",
                  hintText: "Hint",
                  icon: Icon(Icons.people),
                ),
                autocorrect: true,
                autofocus: true,
                keyboardType: TextInputType.text,
                onChanged: onChange,
                onSubmitted: onSubmit,
              ),
              CheckboxListTile(
                value: _value1,
                onChanged: _value1Changed,
                title: Text("title"),
                subtitle: Text("Subtitle"),
                activeColor: Colors.blue,
                secondary: Icon(Icons.input),
              ),
              CheckboxListTile(
                value: _value2,
                onChanged: _value2Changed,
                title: Text("title"),
                subtitle: Text("Subtitle"),
                activeColor: Colors.blue,
                secondary: Icon(Icons.input),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


