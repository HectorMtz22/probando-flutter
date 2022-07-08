import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  const DescriptionPlace({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final description = Container(
      margin: const EdgeInsets.only(
        top: 10,
        left: 20,
        right: 20,
      ),
      child: const Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\n\nIt has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
      style: TextStyle(
        fontSize: 15,
      ),
    )
    );
    

    final star = Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        right: 0.0
      ),
      child: const Icon(
        Icons.star,
        color: Color(0xFFf2C611),
        size: 22.0,
      ),
    );

    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(
            top: 320,
            left: 20,
            right: 20,
          ),

          child: const Text(
            'Duwili Ella',
            // textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
          )
        ),

        Row(children: <Widget>[
          star,
          star,
          star,
          star,
          star,
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

