import 'package:flutter/material.dart';


Widget sizeBox(double w, [double? h]) {
  return SizedBox(
    width: w,
    height: h ?? w,
  );
}

Widget titleCustom(String text, [Color? color]) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: color ?? Colors.black,
    ),
    textAlign: TextAlign.center,
  );
}

Widget headingCustom(String text, [Color? color]) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: color ?? Colors.black,
    ),
  );
}

Widget textCustom(String text, [Color? color]) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: color ?? Colors.black,
    ),
  );
}

Widget infoTextCustom(String text, [Color? color]) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: color ?? Colors.grey,
    ),
    textAlign: TextAlign.justify,
  );
}