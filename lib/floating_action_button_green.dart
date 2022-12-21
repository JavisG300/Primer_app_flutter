import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  bool _pressed = false;
  IconData buttonIcon = Icons.favorite_border;

  void _onPressedFav() {
    if (_pressed == false){
      ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Añadiste a favoritos")));
    setState(() {
      _pressed = true;
      buttonIcon = Icons.favorite;
    });
    } else {
    ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Eliminaste de favoritos")));
    setState(() {
      _pressed = false;
      buttonIcon = Icons.favorite_border;
    });
    }
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: Color(0xFF11DA53),
        mini: true,
        tooltip: 'Fav',
        onPressed: _onPressedFav, //No lleva los paretnesis
        child: Icon(buttonIcon));
  }
}
