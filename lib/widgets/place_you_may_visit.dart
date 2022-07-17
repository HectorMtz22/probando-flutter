import 'package:flutter/material.dart';
import 'package:flutter_trips_app/floating_action_button.dart';
import 'place_image.dart';

class PlaceYouMayVisit extends StatelessWidget {
  final String pathUrl;
  final String title;
  final String description;
  const PlaceYouMayVisit(
      {required this.pathUrl,
      required this.title,
      required this.description,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 40),
      child: Stack(
        alignment: const Alignment(0.0, 1),
        children: [
          MyCardPlace(pathUrl: pathUrl, isPopular: false),
          Container(
              width: 250,
              height: 80,
              padding: const EdgeInsets.only(left: 15, top: 15),
              alignment: Alignment.centerLeft,
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
              ),
              child: Stack(
                alignment: const Alignment(1.4, 4),
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title,
                            style: const TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16)),
                        Text(description,
                            style: const TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 12)),
                      ]),
                  const MyFloatingActionButton(),
                ],
              )),
        ],
      ),
    );
  }
}
