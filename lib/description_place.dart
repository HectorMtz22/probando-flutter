import 'package:flutter/material.dart';
import 'button.dart';
import 'star.dart';

class DescriptionPlace extends StatelessWidget {
  final String namePlace;
  final int stars;
  final String descriptionPlace;

  const DescriptionPlace(
      {required this.namePlace,
      required this.stars,
      required this.descriptionPlace,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final description = Container(
        margin: const EdgeInsets.only(
          top: 20,
          left: 20,
          right: 20,
        ),
        child: Text(
          descriptionPlace,
          style: const TextStyle(fontSize: 16, color: Color(0xFF56575a)),
        ));

    final titleStars = Row(
      children: <Widget>[
        Container(
            margin: const EdgeInsets.only(
              top: 10,
              left: 20,
              right: 20,
            ),
            child: Text(
              namePlace,
              // textAlign: TextAlign.left,
              style: const TextStyle(
                fontFamily: 'Lato',
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            )),
        const Rating(5)
      ],
    );

    final render = Container(
        margin: const EdgeInsets.only(top: 310),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            titleStars,
            description,
            const CircleButton(text: 'Navigate'),
          ],
        ));

    return render;
  }
}
