import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  final int estado;
  final bool mini;
  const Rating(this.estado, {this.mini = false, Key? key}) : super(key: key);

  double size() {
    if (mini) {
      return 17;
    } else {
      return 22;
    }
  }

  @override
  Widget build(BuildContext context) {
    var list = <Widget>[];
    int stars = estado;
    for (var i = 0; i < 5; i++) {
      if (stars > 0) {
        list.add(
            Icon(Icons.star, color: const Color(0xFFf2C611), size: size()));
        stars--;
      } else {
        list.add(Icon(Icons.star_border,
            color: const Color(0xFFf2C611), size: size()));
      }
    }
    return Row(children: [...list]);
  }
}
