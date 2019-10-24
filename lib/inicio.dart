import 'package:flutter/material.dart';

class Inicio extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 300,
          bottom: 10,
          right: 10,
          left: 10,
        ),
        decoration: BoxDecoration(

            color: Colors.black,
            image: DecorationImage(
                image: NetworkImage(
                    "https://d31dn7nfpuwjnm.cloudfront.net/images/valoraciones/0031/5709/Finanzas_Corp.png?1535773085"),
                alignment: Alignment.topCenter)),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: RaisedButton(
                      color: Colors.white,
                      shape: new RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      onPressed: () {
                        Navigator.pushNamed(context, "/Productos");
                      },
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Center(
                          child: Text(
                            "Productos",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  )
                ]),
                Column(children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: RaisedButton(
                      color: Colors.white,
                      shape: new RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      onPressed: () {
                        Navigator.pushNamed(context, "/Notadeventa");
                      },
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Center(
                          child: Text(
                            "Ventas",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  )
                ])
              ],
            ),
          ],
        ),
      ),
    );
  }
}


