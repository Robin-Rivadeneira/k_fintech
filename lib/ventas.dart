import 'package:flutter/material.dart';

class Nota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: new Text("nota de venta"),),
      body: Center(
        child: Text("Seccion ventas"),
      ),
    );
  }
}