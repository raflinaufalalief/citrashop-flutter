import 'package:flutter/material.dart';
// import 'package:flutter_ecommerce/consts/consts.dart';
// import 'package:velocity_x/velocity_x.dart'; // Make sure to import VelocityX if you want to use chaining methods.

Widget ourButton({
  onPress,
  color,
  textColor,
  String? title,
}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      padding: const EdgeInsets.all(12),
    ),
    onPressed: onPress,
    child: Text(
      title!,
      style: TextStyle(
        color: textColor,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
