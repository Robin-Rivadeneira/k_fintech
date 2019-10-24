import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Producto extends StatefulWidget {
  Producto({Key key}) : super(key: key);

  @override
  _ProductoState createState() => _ProductoState();
}

class _ProductoState extends State<Producto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          ListaProducto(
            title: 'Sartén Gourmet Kitchen Negro 30 cm',
            imagePath: "assets/images/A21281-1.jpg",
            backgroundColor: Colors.white,
          ),
          ListaProducto(
            title: 'Sartén Gourmet Kitchen Negro 30 cm',
            imagePath: "assets/images/A21281-1.jpg",
            backgroundColor: Colors.white,
          ),
          ListaProducto(
            title: 'Sartén Gourmet Kitchen Negro 30 cm',
            imagePath: "assets/images/A21281-1.jpg",
            backgroundColor: Colors.white,
          ),
          ListaProducto(
            title: 'Sartén Gourmet Kitchen Negro 30 cm',
            imagePath: "assets/images/A21281-1.jpg",
            backgroundColor: Colors.white,
          ),
          ListaProducto(
            title: 'Sartén Gourmet Kitchen Negro 30 cm',
            imagePath: "assets/images/A21281-1.jpg",
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}

class ListaProducto extends StatelessWidget {
  final String title;
  final String imagePath;
  final Color backgroundColor;

  const ListaProducto(
      {Key key, this.title, this.imagePath, this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 50,
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: RaisedButton(
                    color: backgroundColor,
                    shape: new RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    onPressed: () {
                      Navigator.pushNamed(context, "/Productosp");
                    },
                    child: SizedBox(
                      width: 320,
                      height: 150,
                      child: Stack(
                        children: <Widget>[
                          Image.asset(imagePath),
                          Text(title),
                        ],
                      ),
                    ),
                  ),
                )
              ]),
            ],
          ),
        ],
      ),
    );
  }
}
