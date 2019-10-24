import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:k_fintech/productos.dart';

class fonpaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint();
    paint.color = Colors.blueAccent;

    final Rect rect = Rect.fromLTWH(0, 0, size.width * 0.25, size.height);

    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class Produc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomPaint(
        painter: fonpaint(),
        child: SafeArea(
          bottom: false,
          child: Column(
            children: <Widget>[
              appBar(context),
              content(context),
              button(),
            ],
          ),
        ),
      ),
    );
  }

  Widget appBar(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        MaterialButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(CupertinoPageRoute(
                    builder: (context) => Producto()));
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 32.0,
          ),
        ),
        SizedBox(
          width: 48,
        ),
        Flexible(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 8,
              ),
              Text(
                "Sartén Gourmet Kitchen Negro 30 cm",
                style: Theme
                    .of(context)
                    .textTheme
                    .title
                    .copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                  color: Colors.white
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget content(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 6, top: 0),
        child: Row(
          children: <Widget>[
            Container(
              width: 200,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage('assets/images/A21281-1.jpg'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    
                    Divider(),
                    Text(
                      'Sartén de aluminio con recubrimiento antiadherente reforzado de alta resistencia.Acabado exterior en pintura metalizada resistente al calor.Se puede usar en cocinas a Gas, Eléctricas, Vidriado cerámico.',
                      style: Theme.of(context).textTheme.title.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0,
                            color: Colors.white,
                          ),
                    ),
                    Divider(),
                    Divider(),
                    Container(
                      width: double.infinity,
                      height: 48,
                      color: Colors.indigo,
                      alignment: Alignment.center,
                      child: 
                      Text(
                        '\$1.99',
                        style: Theme.of(context).textTheme.title.copyWith(
                              color: Colors.white, 
                              fontWeight: FontWeight.bold,
                              letterSpacing: 10,
                              fontSize: 30,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget button() {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            topLeft: Radius.circular(50),
          )),
      child: FlatButton(
        onPressed: () {
          
        },
        child: Text(
          "Comprar",
          style: TextStyle(
            color: Colors.white,
            fontSize: 40.0,
            letterSpacing: 10,
          ),
        ),
      ),
    );
  }
}
