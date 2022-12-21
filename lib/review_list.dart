import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
            child: Text(
              "All reviews",
              style: TextStyle(
                  fontSize: 13.0,
                  fontFamily: "Lato",
                  fontWeight: FontWeight.w900,
                  color: Color(0xFFa3a5a7)),
              textAlign: TextAlign.left,
            )),
            Review("assets/img/tigre.jpg", "Varuna Yasas", "There is an amazing place in Sri Lanka", "1 review 5 photos"),
        Review('assets/img/fox.jpg', 'Godzilla123', 'Very beautiful place',
            '1 review 5 girlfriends'),
        Review('assets/img/parrot.jpg', 'Viajeritow',
            'Amazing place for vacations', '4 reviews 6 boyfriends')
      ],
    );
  }
}
