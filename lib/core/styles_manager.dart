import 'package:flutter/cupertino.dart';
import 'package:ma_academy/core/font_manager.dart';

TextStyle _getTextstyle(double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
      fontSize: fontSize,
      fontFamily: FontConstants.fontFamily,
      color: color,
      fontWeight: fontWeight);
}

//regular style
TextStyle getRegularStyle({double fontSize = 12, required Color color}) {
  return _getTextstyle(fontSize, FontWeight.bold, color);
}

//medium style
TextStyle getMediumStyle({double fontSize = 12, required Color color}) {
  return _getTextstyle(fontSize, FontWeight.w300, color);
}

//light style
TextStyle getLightStyle({double fontSize = 12, required Color color}) {
  return _getTextstyle(fontSize, FontWeight.w300, color);
}

//bold style
TextStyle getBoldStyle({double fontSize = 12, required Color color}) {
  return _getTextstyle(fontSize, FontWeight.bold, color);
}

//semibold style
TextStyle getSemiboldStyle({double fontSize = 12, required Color color}) {
  return _getTextstyle(fontSize, FontWeight.w100, color);
}
