import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  final String pathUrl;

  const CardImage({required this.pathUrl, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: 250,
      margin: const EdgeInsets.only(
        top: 80,
        left: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 10),
          ),
        ],
        image: DecorationImage(
          image: AssetImage(pathUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
