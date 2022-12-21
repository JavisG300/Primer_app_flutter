import 'package:flutter/material.dart';
import 'package:my_app/card_image_profile.dart';
import 'package:my_app/card_imageprofile_list.dart';
import 'header_app_bar_profile.dart';


class ProfileTrips extends StatelessWidget{
  String pathImage = "assets/img/mountain.jpg";
  String namePlace = 'Mountains';
  String descriptionPlace = 'A very beautiful, important, amazing, fu***** place';
  String steps =  '123,123,123';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
       
        HeaderAppBarProfile(),  CardImageProfileList(),

      ],
    );
  }

}