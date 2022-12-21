import 'package:flutter/material.dart';
import 'package:my_app/review_list.dart';

import 'description_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget{
  String descriptionDummy =
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. \n It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. \n Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. ';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack (
              children: [
                ListView(
                  children: [
                    DescriptionPlace('Duwili Ella', 4, descriptionDummy),ReviewList()
                  ],
                ),
                HeaderAppBar()
              ],
            );
  }

}