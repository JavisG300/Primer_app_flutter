import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  String buttonText = "Navigate";
  Button(this.buttonText);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Navegando")));
      }, //Maneja todo el comportamiento del boton al ser tapeado
      child: Container(
        margin: EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
        height: 50.0,
        width: 180.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
                30.0), //border radius redondea las esquinas
            gradient: LinearGradient(
                colors: [Color(0xFF4268D3), Color(0xFF584CD1)],
                begin: FractionalOffset(0.2,
                    0.0), //nos permite decir cuanto quiero que los colores se unan
                end: FractionalOffset(1.0, 0.6),
                stops: [0.0, 0.6],
                tileMode: TileMode.clamp)),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
                fontSize: 18.0, fontFamily: 'Lato', color: Colors.white),
          ),
        ),
      ),
    ); //Es un espacio personalizable y toucheable
  }
}
