import 'package:flutter/material.dart';

class StylesText {
  static const title = TextStyle(
      fontSize: 22,
      fontFamily: 'SF Pro Display',
      fontWeight: FontWeight.w500,
      height: 1.20,
      overflow: TextOverflow.clip);

  static const comment = TextStyle(
    color: Color(0xFF828796),
    fontSize: 16,
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w400,
    height: 1.20,
    textBaseline: TextBaseline.alphabetic,
  );

  static const data = TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w400,
    height: 1.20,
  );

  static const input = TextStyle(
    color: Color(0xFF14132A),
    fontSize: 16,
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w400,
    height: 1.10,
    letterSpacing: 0.75,
  );
}
