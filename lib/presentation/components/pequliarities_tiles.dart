import 'package:flutter/material.dart';

class Peculiarities extends StatelessWidget {
  final List<String> peculiarities;

  const Peculiarities(this.peculiarities, {super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
        spacing: 8,
        runSpacing: 8,
        children: peculiarities.map((e) => _makeTile(e)).toList());
  }

  Widget _makeTile(String title) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color(0xFFFBFBFC),
        ),
        child: Text(title,
            style: const TextStyle(
              color: Color(0xFF828796),
              fontSize: 16,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w500,
              height: 1.20,
            )));
  }
}
