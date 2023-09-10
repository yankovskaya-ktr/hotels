import 'package:flutter/material.dart';

import '../styles/styles_text.dart';
import '../utils/format.dart';

class PriceSection extends StatelessWidget {
  final int minimalPrice;
  final String priceForIt;

  const PriceSection(this.minimalPrice, this.priceForIt, {super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      crossAxisAlignment: WrapCrossAlignment.end,
      children: [
        Text(
          'от ${Format.rubles(minimalPrice)}',
          style: const TextStyle(
            textBaseline: TextBaseline.alphabetic,
            fontSize: 30,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w600,
            height: 1.20,
          ),
        ),
        Column(
          children: [
            Text(priceForIt.toLowerCase(), style: StylesText.comment),
            // для выравнивания текста по baseline
            const SizedBox(height: 3),
          ],
        )
      ],
    );
  }
}
