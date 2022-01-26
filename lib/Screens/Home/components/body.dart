import 'package:flutter/material.dart';
import 'package:prueba/Screens/login/loginScreen.dart';

import 'background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "BIENVENIDO",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Image.asset(
            "assets/images/fondo.png",
            height: 180,
            alignment: Alignment.center,
          ),
          Container(
            padding: EdgeInsets.all(32.0),
            child: Center(
              child: RaisedButton(
                  child: Text("iniciar"),
                  onPressed: () {
                    Route route =
                        MaterialPageRoute(builder: (bc) => LoginScreen());
                    Navigator.of(context).push(route);
                  }),
            ),
          )
        ],
      ),
    );
  }
}
