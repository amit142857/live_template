import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';
import 'dart:io';

final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn _googlesignin = new GoogleSignIn();

void main() {
  runApp(new MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String _status;

  @override
  void initState() {
    _status = "Not Authenticated";
  }

  void _signInAnon() async {
    FirebaseUser user = await _auth.signInAnonymously();
    if(user != null && user.isAnonymous == true){
      setState(() {
        _status = "Signed in Annonymously";
      });
    } else {
      setState(() {
        _status = "Sign in Failed";
      });
    }
  }

  void _signInGoogle() async {
    GoogleSignInAccount googleUser = await _googlesignin.signIn();
    GoogleSignInAuthentication googleAuth = await googleUser.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final FirebaseUser user = await _auth.signInWithCredential(credential);

    if (user != null && user.isAnonymous == false){
      setState(() {
        _status = "Signed in with google";
      });
    } else {
      setState(() {
        _status = "Google sign in failed";
      });
    }
  }
  
  void _signOut() async{
    await _auth.signOut();
    setState(() {
      _status = "Signed Out";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:<Widget> [
              Text(_status),
              ElevatedButton(onPressed: _signOut, child: Text("Sign Out")),
              ElevatedButton(onPressed: _signInAnon, child: Text("Sign in Annonymously")),
              ElevatedButton(onPressed: _signInGoogle, child: Text('Sign in with google'))
            ],
          ),
        ),
      ),
    );
  }
}