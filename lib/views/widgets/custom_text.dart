import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  CustomText({
    super.key,
    required this.text,
    this.color,
    this.fontSize,
    this.fontFamily,
    this.fontWeight
  });
  final String text;
  Color? color;
  double? fontSize;
  String? fontFamily;
  FontWeight? fontWeight;


  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
      ),
    );
  }
}
