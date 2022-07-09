import 'package:flutter/material.dart';
import 'star.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace ;
  int stars;
  String descriptionPlace;

   DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace, {Key? key}) : super(key: key);

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
      style: const TextStyle(
        fontSize: 16,
        color: Color(0xFF56575a)
      ),
    )
    );
    


    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(
            top: 320,
            left: 20,
            right: 20,
          ),

          child: Text(
            namePlace,
            // textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
          )
        ),

        Row(children: <Widget>[
          Star(2),
          Star(0),
          Star(0),
          Star(0),
          Star(0),
          ],
        )
      ],
    ); 

    final render = Column(
      children: <Widget>[
        titleStars,
        description,
      ],
    );

  

    return render;
    
  }
}

