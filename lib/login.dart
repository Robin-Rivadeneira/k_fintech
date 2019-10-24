import 'dart:wasm';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'inicio.dart';
import 'Registro.dart';

class Login extends StatefulWidget {
  final String title;
  Login({Key key, this.title}) : super(key: key);
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController _emailcontroller=TextEditingController();
  TextEditingController _passwordcontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _emailcontroller,
              decoration: InputDecoration(
                labelText: 'Email',
                icon: Icon(Icons.email)
              ),
            ),
            SizedBox(height: 15.0,),
            TextField(
              controller: _passwordcontroller,
              decoration: InputDecoration(
                labelText: 'Password',
                icon: Icon(Icons.vpn_key)
              ),
            ),
            SizedBox(height: 15.0,),
            FlatButton(
              child: Text('Login'),
              color: Colors.blueGrey,
              textColor: Colors.cyan,
              onPressed: (){
                FirebaseAuth.instance.signInWithEmailAndPassword(
                  email: _emailcontroller.text,
                  password: _passwordcontroller.text).then((AuthResult auth){
                  Navigator.of(context).pushReplacement(CupertinoPageRoute(
                    builder: (context) => Inicio(),
                  ));
                  }).catchError((e){
                    print(e);
                    });
              },
            ),
            FlatButton(
              child: Text('Registro'),
              color: Colors.blueGrey,
              textColor: Colors.cyan,
              onPressed: ()=> _pushPage(context, Registro()),
            ),
          ],
        ),
      ),
    );
  }
}

void _pushPage(BuildContext context, Widget page){
  Navigator.of(context).push(
    MaterialPageRoute<Void>(
      builder: (_) => page
    )
  );
}