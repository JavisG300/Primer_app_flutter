import 'package:flutter/material.dart';
import 'button.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int stars;
  String descriptionPlace;

  //Creando el constructor
  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final text = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: Text(
        descriptionPlace,
        style:
            TextStyle(fontSize: 20.0, fontFamily: 'Lato', color: Colors.grey),
        //textAlign: TextAlign.justify,
      ),
    );

    final star_half = Container(
        margin: EdgeInsets.only(top: 393.0, right: 3.0),
        child: Icon(
          Icons.star_half,
          color: Color.fromARGB(255, 252, 189, 2),
        ));
    final star_border = Container(
        margin: EdgeInsets.only(top: 393.0, right: 3.0),
        child: Icon(
          Icons.star_border,
          color: Color.fromARGB(255, 252, 189, 2),
        ));

    final star = Container(
        margin: EdgeInsets.only(top: 393.0, right: 3.0),
        child: Icon(
          Icons.star,
          color: Color.fromARGB(255, 252, 189, 2),
        ));

    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
              top: 390.0,
              left: 20.0,
              right: 20.0), //EdgeInsets permite generar un margen especifico
          child: Text(
            namePlace,
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w900, fontFamily: "Lato" ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[star, star, star, star, star_half],
        )
      ],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[title_stars, text, Button("Navigate")],
    );
  }
}
