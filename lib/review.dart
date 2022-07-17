import 'package:flutter/material.dart';
import 'package:flutter_trips_app/star.dart';

class Review extends StatelessWidget {
  final String name;
  final String pathImage;
  final String details;
  final String comment;

  const Review(
      {required this.pathImage,
      required this.name,
      required this.details,
      required this.comment,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        _photo(pathImage),
        _description(name, details, comment),
      ],
    );
  }

  Widget _photo(assetUrl) {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(assetUrl),
        ),
      ),
    );
  }

  Widget _description(name, details, comment) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                name,
                style: const TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Rating(4, mini: true)
          ],
        ),
        Text(
          details,
          style: const TextStyle(
            fontFamily: 'Lato',
            fontSize: 13.0,
            color: Colors.grey,
          ),
        ),
        Text(
          comment,
          style: const TextStyle(
            fontSize: 13.0,
          ),
        ),
      ],
    );
  }
}
