import 'package:flutter/material.dart';
import 'floating_action_button.dart';

class CardImage extends StatelessWidget {
  final String pathUrl;

  const CardImage({required this.pathUrl, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _card(),
        Container(
          width: 250,
          alignment: Alignment.bottomRight,
          child: const MyFloatingActionButton(),
        )
      ],
    );
  }

  Widget _card() {
    return Container(
      height: 200,
      width: 250,
      margin: const EdgeInsets.only(
        top: 100,
        left: 20,
      ),
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
