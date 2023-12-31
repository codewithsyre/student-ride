import 'package:flutter/material.dart';

class PositionedContainer extends StatelessWidget {
  const PositionedContainer({
    Key? key,
    required this.title,
    required this.left,
    required this.top,
    required this.width,
    required this.height,
    required this.fontSize,
    required this.height2,
  }) : super(key: key);

  final String title;
  final double left;
  final double top;
  final double width;
  final double height;
  final double fontSize;
  final double height2;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      top: top,
      child: Container(
        width: width,
        height: height,
        decoration: ShapeDecoration(
          gradient: LinearGradient(
            // begin: Alignment(0.00, -1.00),
            // end: Alignment(0, 1),
            colors: [
              Color.fromARGB(255, 27, 105, 138),
              Color.fromARGB(255, 52, 197, 245),
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3),
          ),
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            height: height2,
            color: Colors.white,
            fontSize: fontSize,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
            letterSpacing: 0.51,
          ),
        ),
      ),
    );
  }
}
