import 'package:flutter/material.dart';

import '../styles/styles_text.dart';

class RatingNameAddressSection extends StatelessWidget {
  final String name;
  final String adress;
  final int rating;
  final String ratingName;

  const RatingNameAddressSection(
      {super.key,
      required this.name,
      required this.adress,
      required this.rating,
      required this.ratingName});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _Rating(rating, ratingName),
        const SizedBox(height: 8),
        Text(name, style: StylesText.title),
        const SizedBox(height: 8),
        GestureDetector(
            onTap: () => {},
            child: Text(adress,
                style: const TextStyle(
                  color: Color(0xFF0D72FF),
                  fontSize: 14,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w500,
                  height: 1.20,
                ))),
      ],
    );
  }
}

class _Rating extends StatelessWidget {
  final int rating;
  final String ratingName;

  const _Rating(this.rating, this.ratingName);

  @override
  Widget build(BuildContext context) {
    // var asset = AssetImage('assets/icons/star.png');
    // var img = Image.asset('assets/icons/star.png', width: 15, height: 15);

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color(0xFFFFC700).withOpacity(0.2),
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/icons/star.png', width: 15, height: 15),
            const SizedBox(width: 2),
            Text(
              '$rating $ratingName',
              style: const TextStyle(
                color: Color(0xFFFFA800),
                fontSize: 16,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w500,
                height: 1.20,
              ),
            ),
          ]),
    );
  }
}
