import 'package:flutter/material.dart';
import 'button_purple.dart';

class DescriptionPlace extends StatelessWidget {

  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);


  @override
  Widget build(BuildContext context) {

    final star_half = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    final star_border = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );
    
    final star = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final description = Container(
      margin: new EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0
      ),
      child: new Text(
        descriptionPlace,
        style: const TextStyle(
          fontFamily: 'Coiny',
          fontSize: 16.0,
          fontWeight: FontWeight.bold
        ),        
      ),
    );

    final title = Container(
      margin: EdgeInsets.only(
        top: 320.0,
        left: 20.0,
        right: 20.0
      ),
      child: Text(
        namePlace,
        style: TextStyle(
          fontFamily: 'Coiny',
          fontSize: 30.0,
          fontWeight: FontWeight.w900
        ),
        textAlign: TextAlign.left,
      ),
    );

    final titleStars = Row(
      children: <Widget>[
        title,
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star,
            star_border
          ],
        )
      ],
    );

    final description_place = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          titleStars,
          description,
          ButtonPurple("Navigateeee"),
        ],
      );

    return description_place;

  }

}