import 'package:flutter/material.dart';

class MyCardPlace extends StatelessWidget {
  final String pathUrl;
  final bool isPopular;
  const MyCardPlace({required this.pathUrl, this.isPopular = true, Key? key})
      : super(key: key);

  EdgeInsets applyMargin() {
    if (isPopular) {
      return const EdgeInsets.only(
        top: 100,
        left: 20,
      );
    } else {
      return const EdgeInsets.only(
        top: 0,
        left: 20,
        right: 20,
        bottom: 20,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isPopular ? 200 : 250,
      width: isPopular ? 250 : 350,
      margin: applyMargin(),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        shape: BoxShape.rectangle,
        boxShadow: const [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15,
            offset: Offset(0, 7),
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
