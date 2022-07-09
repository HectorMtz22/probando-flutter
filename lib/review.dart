import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathImage = 'assets/img/cynthia.jpg';

  Review(this.pathImage, {Key? key}) : super(key: key);

  final description = Column( 
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const <Widget>[
      Text(
        'Cynthia',
        style: TextStyle(
          fontFamily: 'Lato',
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        '1 review 5 photos',
        style: TextStyle(
          fontFamily: 'Lato',
          fontSize: 13.0,
          color: Colors.grey,
        ),
      ),
      Text(
        'There is an amazing place in Sri Lanka',
        style: TextStyle(
          fontSize: 13.0,
        ),
      ),
    ],
  );

  final photo = Container(
    margin: const EdgeInsets.only(
      top: 20,
      left: 20,
      right: 20
    ),
    width: 80,
    height: 80,
    decoration: const BoxDecoration(
      shape: BoxShape.circle,
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage('assets/img/cynthia.jpg'),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        photo,
        description
      ],
    );
    
  }
}