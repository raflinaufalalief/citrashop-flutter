import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/consts/consts.dart';

Widget applogoWidget() {
  //using velocity
  return Image.asset(icAppLogo)
      .box
      .white
      .size(77, 77)
      .padding(const EdgeInsets.all(8))
      .rounded
      .make();
}
