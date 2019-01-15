import 'package:flutter/material.dart';

class ThreeDListView extends StatelessWidget {
  final listofImages = [
    "http://oi67.tinypic.com/b989vl.jpg",
    "http://oi67.tinypic.com/2ywbi53.jpg",
    "http://oi64.tinypic.com/a4y042.jpg",
    "http://oi66.tinypic.com/9roopg.jpg",
    "http://oi68.tinypic.com/1zx2urp.jpg",
    "http://oi65.tinypic.com/2zgwvgp.jpg",
    "http://oi63.tinypic.com/e5mw5l.jpg",
    "http://oi68.tinypic.com/aavv2e.jpg",
    "http://oi67.tinypic.com/jqpe08.jpg"
    "http://oi66.tinypic.com/2gsefwp.jpg",
    "http://oi66.tinypic.com/2wemkxu.jpg",
    "http://oi66.tinypic.com/1j23nq.jpg",
    "http://oi65.tinypic.com/2d3yg9.jpg",
    "http://oi66.tinypic.com/15q5jy0.jpg",
    "http://oi64.tinypic.com/dy85xc.jpg",
    "http://oi67.tinypic.com/5m0s90.jpg",
    "http://oi66.tinypic.com/2r7r14x.jpg",
    "http://oi66.tinypic.com/121db2f.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hammad"),
      ),
      body: Center(
        child: ListWheelScrollView(
          perspective: 0.003,
          diameterRatio: 2.0,
          physics: BouncingScrollPhysics(),
          children: listofImages
              .map(
                (m) => Card(
//              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Stack(
                fit: StackFit.expand,
                alignment: Alignment.center,
                children: <Widget>[
                  Image.network(
                    m,
                    alignment: Alignment.center,
//                    filterQuality: FilterQuality.low,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 40.0,
                    left: 30.0,
                    child: Text(
                      "Hammad",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
              .toList(),
          itemExtent: MediaQuery.of(context).size.height * 0.8,
        ),
      ),
    );
  }
}