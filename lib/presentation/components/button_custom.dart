import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  const ButtonCustom({super.key, required this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
        onPressed: onPressed,
        child: Text(
          title,
          // style: TextStyle(
          //   color: Colors.white,
          //   fontSize: 16,
          //   fontFamily: 'SF Pro Display',
          //   fontWeight: FontWeight.w500,
          //   height: 1.10,
          //   letterSpacing: 0.10,
          // ),
        ));
  }
}
