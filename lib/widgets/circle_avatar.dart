import 'package:flutter/material.dart';

class MyCircleAvatar extends StatelessWidget {
  final String assetUrl;
  const MyCircleAvatar({required this.assetUrl, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2),
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(assetUrl),
        ),
      ),
    );
  }
}
