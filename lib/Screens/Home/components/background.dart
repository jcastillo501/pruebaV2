import 'package:flutter/material.dart';

class background extends StatelessWidget {
  final Widget child;
  const background({
    @required Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Positioned(
              top: -160,
              right: -220,
              child: Image.asset(
                "assets/images/Top.png",
                width: size.width * 1.5,
              )),
          Positioned(
            left: -200,
            bottom: -100,
            child: Image.asset(
              "assets/images/bottom.png",
              width: size.width * 0.9,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
