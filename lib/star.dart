import 'package:flutter/material.dart';

class Star extends StatelessWidget {
  final int estado;
  const Star(this.estado, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0, right: 0.0),
      child: Icon(
        estado == 0
            ? Icons.star_border
            : estado == 1
                ? Icons.star
                : Icons.star_half,
        color: const Color(0xFFf2C611),
        size: 22.0,
      ),
    );
  }
}
