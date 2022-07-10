// Flutter
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// Own imports
import 'header_appbar.dart';
import 'review.dart';
import 'description_place.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Stack(
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
        ),
      ),
    );
  }
}
