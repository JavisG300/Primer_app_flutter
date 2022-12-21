import 'package:flutter/material.dart';
import 'floating_action_button_green.dart';

class CardImageProfile extends StatelessWidget {
  String pathImage = "assets/img/mountain.jpg";
  String namePlace = 'Mountains';
  String descriptionPlace =
      'A very beautiful, important, amazing fu***** place, I recommend you to visit this Mountains';
  String steps = 'Steps 123,123,123';

  CardImageProfile(
      this.pathImage, this.namePlace, this.descriptionPlace, this.steps);

  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 230.0,
      width: 361.0,
      margin: EdgeInsets.only(top: 35.0, left: 10.0, right: 10.0),
      decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(pathImage),
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0))
          ]),
    );

    final title_place = Container(
      margin: EdgeInsets.only(
          top: 10.0,
          left: 20.0,
          right: 20.0), //EdgeInsets permite generar un margen especifico
      child: Text(
        namePlace,
        style: TextStyle(
            fontSize: 20.0, fontWeight: FontWeight.w900, fontFamily: "Lato"),
        textAlign: TextAlign.left,
      ),
    );

    final description_place = Container(
        margin: EdgeInsets.only(
            top: 10.0,
            left: 5.0,
            right: 5.0), //EdgeInsets permite generar un margen especifico
        child: Text(
          descriptionPlace,
          style: TextStyle(fontSize: 17.0, fontFamily: "Lato"),
          textAlign: TextAlign.left,
        ));
    final stepsP = Container(
        margin: EdgeInsets.only(
            top: 10.0,
            left: 5.0,
            right: 5.0), //EdgeInsets permite generar un margen especifico
        child: Text(
          steps,
          style: TextStyle(
              fontSize: 17.0,
              fontFamily: "Lato",
              color: Colors.amber,
              fontWeight: FontWeight.w900),
          textAlign: TextAlign.left,
        ));

    final description = Container(
        height: 140.0,
        width: 280.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            color: Colors.white),
        child: Column(children: [title_place, description_place, stepsP]));

    final cardImageProfile =
        Stack(alignment: Alignment(0.0, 1.2), children: [card, description]);

    return Stack(
        alignment: Alignment(0.7, 1.2),
        children: [cardImageProfile, FloatingActionButtonGreen()]);
  }
}
