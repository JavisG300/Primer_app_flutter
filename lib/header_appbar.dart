import 'package:flutter/material.dart';
import 'package:my_app/card_image_list.dart';
import 'card_image.dart';
import 'gradient_back.dart';

class HeaderAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        GradientBack("Welcome"),
        CardImageList()

      ],

    );
  }

}