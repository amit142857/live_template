import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Authenticator extends StatefulWidget {

  Authenticator ({Key key, this.OnAuthenticated});  //this line is creating a constructor for OnAuthenticated which is initialized on main.dart
  final ValueChanged<bool> OnAuthenticated;

  @override
  _AuthenticatorState createState() => _AuthenticatorState(OnAuthenticated: OnAuthenticated);
}

class _AuthenticatorState extends State<Authenticator> {

  bool _obscureText = true;

  _AuthenticatorState ({Key key, this.OnAuthenticated});

  TextEditingController _user;
  TextEditingController _pass;
  ValueChanged<bool> OnAuthenticated;


  void _OnClick() {
    if (_user.text != "user" || _pass.text != "1234"){
      OnAuthenticated(false);
    } else{
      OnAuthenticated(true);
    }
  }

  void _obscure(){
    setState(() {
      _obscureText = !_obscureText;
    });
  }


  @override
  void initState() {
    _user = TextEditingController();
    _pass = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(20),
      child: Column(
        children:<Widget> [
          TextField(
            controller: _user,
            autofocus: true,
            decoration: InputDecoration(
                labelText: "@Username",
                icon:  Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Icon(Icons.person),
                )
            ),
          ),
          TextField(
            controller: _pass,
            decoration: InputDecoration(
                labelText: "@Password",
                icon:  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Icon(Icons.lock)),
              suffix: InkWell(
                onTap: _obscure,
                  child:Icon(Icons.visibility)
              ),
            ),
            obscureText: _obscureText,
          ),

          Padding(padding: EdgeInsets.all(10),
          child: RaisedButton(
            onPressed: _OnClick,
            child: Text("Login"),
          ),
          )
        ],
      ),
      ),
    );
  }
}
