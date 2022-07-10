import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final String text;
  const CircleButton({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() => ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Navigating...')),
          )),
      child: Container(
        margin: const EdgeInsets.all(20),
        height: 50,
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: const LinearGradient(
            colors: [
              Color(0xFF4268d3),
              Color(0xff584cd1),
            ],
            begin: FractionalOffset(0.2, 0.0),
            end: FractionalOffset(1.0, 0.6),
            stops: [0.0, 0.6],
            tileMode: TileMode.clamp,
          ),
        ),
        child: Center(
            child: Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        )),
      ),
    );
  }
}
