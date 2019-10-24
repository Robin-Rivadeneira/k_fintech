import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'inicio.dart';


final FirebaseAuth _auth =FirebaseAuth.instance;

class Registro extends StatefulWidget {
  final String title = 'Registration';

  State<StatefulWidget> createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  final GlobalKey<FormState> _formKey =GlobalKey<FormState>();
  final TextEditingController _emailController =TextEditingController();
  final TextEditingController _passswordController =TextEditingController();
  bool _success;
  String _userEmail;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
              validator: (String value) {
                if(value.isEmpty) {
                  return 'Please enter some text';
                }
              },
            ),
            TextFormField(
              controller: _passswordController,
              decoration: InputDecoration(labelText: 'Password'),
              validator: (String value) {
                if(value.isEmpty) {
                  return 'Please enter some text';
                }
              },
            ),
            FlatButton(
              child: Text('Registrar'),
              color: Colors.deepPurple,
              textColor: Colors.white,
              onPressed: () {
                Navigator.of(context).pushReplacement(CupertinoPageRoute(
                    builder: (context) => Inicio(),
                  ));
               _register();
              }
            ),
            Container(
              alignment: Alignment.center,
              child: Text(_success == null
                ? ''
                : (_success
                  ? 'Successfully registered' + _userEmail
                  : 'Registration failed'
                )
              ),
            )
          ],
        ),
      ),
    );
  }


  void dispose() {
    _emailController.dispose();
    _passswordController.dispose();
    super.dispose();
  }

  void _register() async {
    final AuthResult user = await _auth.createUserWithEmailAndPassword(
      email: _emailController.text,
      password: _passswordController.text,
    );
    if (user != null) {
      setState(() {
       _success = true;
      });
    } else {
      _success = false;
    }
  }


}