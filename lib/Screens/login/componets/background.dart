import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    required Key key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: -160,
            right: -240,
            child: Image.asset(
              "assets/images/Top.png",
              width: size.width * 1.1,
            ),
          ),
          Positioned(
            bottom: -550,
            right: 0,
            child: Image.asset(
              "assets/images/bottom.png",
              width: size.width * 3,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
