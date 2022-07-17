import 'package:flutter/material.dart';
import 'floating_action_button.dart';
import 'widgets/place_image.dart';

class CardImage extends StatelessWidget {
  final String pathUrl;

  const CardImage({required this.pathUrl, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        MyCardPlace(pathUrl: pathUrl),
        Container(
          width: 250,
          alignment: Alignment.bottomRight,
          child: const MyFloatingActionButton(),
        )
      ],
    );
  }
}
