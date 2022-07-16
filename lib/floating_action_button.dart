import 'package:flutter/material.dart';

class MyFloatingActionButton extends StatefulWidget {
  const MyFloatingActionButton({Key? key}) : super(key: key);

  @override
  State<MyFloatingActionButton> createState() => MyFloatingActionButtonState();
}

class MyFloatingActionButtonState extends State<MyFloatingActionButton> {
  bool isLiked = false;
  void onPressedButton() {
    setState(() {
      isLiked = !isLiked;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: isLiked
            ? const Text('You liked this')
            : const Text('You disliked this'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressedButton,
      backgroundColor: Colors.green,
      tooltip: "Add to Favorites",
      mini: true,
      child: isLiked
          ? const Icon(Icons.favorite)
          : const Icon(Icons.favorite_border),
    );
  }
}
