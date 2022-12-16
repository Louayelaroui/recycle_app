import 'package:flutter/material.dart';


class SplashScreenIndecator extends StatefulWidget {
  Color color;
   SplashScreenIndecator({required this.color}) ;

  @override
  State<SplashScreenIndecator> createState() => _SplashScreenIndecatorState();
}

class _SplashScreenIndecatorState extends State<SplashScreenIndecator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15,right: 15),
        width: 15,
        height: 15,
        decoration: BoxDecoration(
          color: widget.color,
          shape: BoxShape.circle,
        )
    );
  }
}
