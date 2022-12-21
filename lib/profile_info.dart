import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget{

 String pathImage = "assets/img/tigre.jpg";
  String name = "Pathum Tzoo";
  String mail = "pathumntzoo1@gmail.com";

ProfileInfo(this.pathImage, this.name, this.mail); //Método constructor

  @override
  Widget build(BuildContext context) {
    final userName = Container(
      margin: EdgeInsets.only(top:30.0 ,left: 20.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 17.0, fontFamily: "Lato", color:  Colors.white),
      ),
    );

    final userMail = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        mail,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 13.0,
            fontFamily: "Lato",
            fontWeight: FontWeight.w900,
            color: Color.fromARGB(255, 166, 166, 169)),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [userName, userMail],
    );

    final photo = Container(
            margin: EdgeInsets.only(top: 10.0, left: 20.0),
            width: 80.0,
            height: 80.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(pathImage))),
          );
    


    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [photo, userDetails],

    );
  }
}