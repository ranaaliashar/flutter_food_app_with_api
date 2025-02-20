import 'package:flutter/material.dart';

textWidget({
  required String text,
  double fontSize = 14,
  FontWeight fontWeight = FontWeight.normal,
}) {
  return Text(
    text,
    style: TextStyle(
      color: Colors.white,
      fontSize: fontSize,
      fontWeight: fontWeight,
    ),
  );
}
