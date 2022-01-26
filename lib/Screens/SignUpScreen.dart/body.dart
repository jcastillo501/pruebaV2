import 'package:flutter/material.dart';
import 'package:prueba/Screens/login/componets/background.dart';

class Body extends StatelessWidget {
  const Body({
    required Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        children: <Widget>[
          Container(
            height: 300,
            decoration: BoxDecoration(),
            child: Center(
              child: Image.asset(
                "assets/images/fondo.png",
                width: size.width * 0.6,
              ),
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            width: 300,
            height: 16,
            child: Text(
              "Complete los siguientes campos para continuar",
            ),
          ),
          Expanded(
              child: Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(
              children: <Widget>[
                _textInput(hint: "Nombre completo"),
                _textInput(hint: "Correo"),
                _textInput(hint: "Direccion"),
                Container(
                  padding: const EdgeInsets.only(top: 30),
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text("Continuar"),
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }

  Widget _textInput({controller, hint}) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
      ),
      padding: EdgeInsets.only(left: 10),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(border: InputBorder.none, hintText: hint),
      ),
    );
  }
}
