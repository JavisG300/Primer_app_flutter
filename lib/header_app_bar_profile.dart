import 'package:flutter/material.dart';
import 'package:my_app/gradiente_back_profile.dart';
import 'package:my_app/profile_info.dart';
import 'profile_options.dart';



class HeaderAppBarProfile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final profileMail = Container(
      margin: EdgeInsets.only(top: 130.0),
      child: Column(
        children: [Row(children: [ProfileInfo('assets/img/parrot.jpg', 'Pathum Tzoo', 'pathumtzoo@gmail.com')],),ProfileOptions()])
      

    );




    return Stack(
      children: [
        GradientBackProfile("Profile"), profileMail
        

      ],

    );
  }

}