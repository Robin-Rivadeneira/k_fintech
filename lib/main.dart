import 'package:flutter/material.dart';
import 'package:k_fintech/Producto(presio).dart';
import 'package:k_fintech/productos.dart';
import 'package:k_fintech/ventas.dart';


import 'inicio.dart';
import 'login.dart';


void main() => runApp(Principal());

class Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'K_Fintech',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),

      routes: <String, WidgetBuilder>{
        "/Inicio" :(BuildContext context) => Inicio(),
        "/Productos" :(BuildContext context) => Producto(),
        "/Notadeventa" :(BuildContext context) => Nota(),
        "/Productosp": (BuildContext context) => Produc(),
      },
      home: Login(),
    );
  }
}
