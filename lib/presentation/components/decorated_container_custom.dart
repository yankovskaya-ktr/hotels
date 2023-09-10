import 'package:flutter/material.dart';

class DecoratedContainerCustom extends StatelessWidget {
  final Widget child;

  const DecoratedContainerCustom({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.only(top: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.white),
        child: child);
  }
}
