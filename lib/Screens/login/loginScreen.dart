import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: size.height,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: -100,
              right: -220,
              child: Image.asset(
                "assets/images/Top.png",
                width: size.width * 1.2,
              ),
            ),
            Positioned(
                bottom: -500,
                right: 0,
                child: Image.asset(
                  "assets/images/bottom.png",
                  width: size.width * 3,
                ))
          ],
        ),
      ),
    );
  }
}
