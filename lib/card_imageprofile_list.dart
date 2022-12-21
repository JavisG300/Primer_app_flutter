import 'package:flutter/material.dart';
import 'card_image_profile.dart';

class CardImageProfileList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 950.0,
      margin: EdgeInsets.only(top: 292.0, left: 10.0, right: 10.0, bottom: 50.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [ 
          CardImageProfile('assets/img/beach.jpg', 'Playa tres Marías', 'The most beautiful beach on earth', 'Steps 456,456,456'),
          CardImageProfile('assets/img/river.jpg','Río de los remedios','The stinkiest place in the world', 'Steps 123,456,789'),
          CardImageProfile('assets/img/mountain.jpg', 'Cerro del Chiquihuite', 'The most aesthetic hill', 'Steps 456,789,123')

          
        ],
      ),
    );;
  }

}