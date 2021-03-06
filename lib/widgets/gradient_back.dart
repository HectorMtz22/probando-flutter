import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {
  final String title;
  final bool maximize;
  const GradientBack({this.title = 'Popular', this.maximize = false, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: maximize ? 350 : 250,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFF2468D3),
                Color(0xFF584CD1),
              ],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp)),
      // alignment: const Alignment(-0.9, -0.6),
      alignment: AlignmentDirectional.topStart,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),

      child: Text(
        title,
        style: const TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: 'Lato'),
      ),
    );
  }
}
