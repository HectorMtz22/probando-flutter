import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  final int estado;
  const Rating(this.estado, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var list = <Widget>[];
    int stars = estado;
    for (var i = 0; i < 5; i++) {
      if (stars > 0) {
        list.add(const Icon(Icons.star, color: Color(0xFFf2C611), size: 22));
        stars--;
      } else {
        list.add(
            const Icon(Icons.star_border, color: Color(0xFFf2C611), size: 22));
      }
    }
    return Container(
      margin: const EdgeInsets.only(top: 10.0, right: 0.0),
      child: Row(children: [...list]),
    );
  }
}
