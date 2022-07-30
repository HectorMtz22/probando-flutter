import 'package:flutter/material.dart';
import '../../../widgets/gradient_back.dart';
import '../../../widgets/card.dart';

class HeaderAppBar extends StatelessWidget {
  const HeaderAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const GradientBack(),
        SizedBox(
            height: 350,
            child: ListView(
              padding: const EdgeInsets.only(bottom: 32, right: 30),
              scrollDirection: Axis.horizontal,
              children: const [
                CardImage(pathUrl: 'assets/img/canada.jpg'),
                CardImage(pathUrl: 'assets/img/beach.jpg'),
                CardImage(pathUrl: 'assets/img/nature.jpg'),
              ],
            ))
      ],
    );
  }
}
