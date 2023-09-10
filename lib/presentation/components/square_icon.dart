import 'package:flutter/material.dart';

class SquareIcon extends StatelessWidget {
  final String imageAsset;
  final Color backgroundColor;
  const SquareIcon({
    super.key,
    required this.imageAsset,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: backgroundColor), //const Color(0x190D72FF)),
        child: Image.asset(imageAsset));
  }
}
