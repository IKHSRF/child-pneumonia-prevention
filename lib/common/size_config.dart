import 'package:flutter/material.dart';

Orientation getOrientation(BuildContext context) {
  Orientation orientation = MediaQuery.of(context).orientation;
  return orientation;
}

// Get the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight, BuildContext context) {
  double screenHeight = MediaQuery.of(context).size.height;
  // 812 is the layout height that designer use
  return (inputHeight / 812.0) * screenHeight;
}

// Get the proportionate height as per screen size
double getProportionateScreenWidth(double inputWidth, BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.height;
  // 375 is the layout width that designer use
  return (inputWidth / 375.0) * screenWidth;
}
