import 'package:flutter/material.dart';

class BottomAppBarCustom extends StatelessWidget {
  final Widget child;
  const BottomAppBarCustom({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        decoration: const BoxDecoration(
            border: Border(
                top: BorderSide(
          width: 0.50,
          color: Color(0xFFE8E9EC),
        ))),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: child,
      ),
    );
  }
}
