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
              "Ingrese con su numero de telefono",
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.white),
                    child: TextFormField(
                      decoration: const InputDecoration(hintText: "+57"),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 60),
                    child: Flexible(
                        child: SizedBox(
                            height: 50,
                            width: 150,
                            child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                onPressed: () {},
                                child: Text("Continuar")))),
                  ),
                  Container(
                      padding: const EdgeInsets.only(top: 60),
                      child: Text("Tambien puedes con")),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
