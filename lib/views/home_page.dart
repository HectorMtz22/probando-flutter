import 'package:flutter/material.dart';
import '../review.dart';
import '../description_place.dart';
import '../header_appbar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(children: const <Widget>[
          DescriptionPlace(
            namePlace: 'Hello',
            stars: 4,
            descriptionPlace:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tortor condimentum lacinia quis vel eros donec. Nam aliquam sem et tortor consequat id. Congue quisque egestas diam in. \n\nIn fermentum posuere urna nec tincidunt praesent semper. Fames ac turpis egestas integer eget. Sed euismod nisi porta lorem mollis aliquam ut porttitor. Nec ultrices dui sapien eget.',
          ),
          Review(
            pathImage: 'assets/img/cynthia.jpg',
            name: 'Cynthia',
            details: '1 review 5 photos',
            comment: 'There is an amazing place in Sri Lanka',
          ),
          Review(
            pathImage: 'assets/img/cynthia.jpg',
            name: 'Cynthia',
            details: '1 review 5 photos',
            comment: 'There is an amazing place in Sri Lanka',
          ),
          Review(
            pathImage: 'assets/img/cynthia.jpg',
            name: 'Cynthia',
            details: '1 review 5 photos',
            comment: 'There is an amazing place in Sri Lanka',
          ),
        ]),
        const HeaderAppBar()
      ],
    );
  }
}