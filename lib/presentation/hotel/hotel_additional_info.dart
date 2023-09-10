import 'package:flutter/material.dart';

import '../../domain/hotel/hotel.dart';
import '../components/pequliarities_tiles.dart';

class HotelAdditionalInfo extends StatelessWidget {
  final Hotel hotel;
  const HotelAdditionalInfo(this.hotel, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 8, 0, 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.white),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          'Об отеле',
          style: TextStyle(
            fontSize: 22,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w500,
            height: 1.20,
          ),
        ),
        const SizedBox(height: 16),
        Peculiarities(hotel.aboutTheHotel.peculiarities),
        const SizedBox(height: 12),
        Text(hotel.aboutTheHotel.description,
            style: const TextStyle(
              fontSize: 16,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
              height: 1.20,
            )),
        const SizedBox(height: 16),
        const _Buttons(),
      ]),
    );
  }
}

class _Buttons extends StatelessWidget {
  const _Buttons();

  @override
  Widget build(BuildContext context) {
    final divider = Divider(
      height: 20,
      color: const Color(0xFF828696).withOpacity(0.15),
      indent: 36,
    );
    return Padding(
        padding: const EdgeInsets.all(15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          GestureDetector(
            onTap: () => {},
            child: _makeTile('Удобства', 'Самое необходимое',
                'assets/icons/emoji-happy.png'),
          ),
          divider,
          GestureDetector(
              onTap: () => {},
              child: _makeTile('Что включено', 'Самое необходимое',
                  'assets/icons/tick-square.png')),
          divider,
          GestureDetector(
              onTap: () => {},
              child: _makeTile('Что не включено', 'Самое необходимое',
                  'assets/icons/close-square.png')),
        ]));
  }

  Widget _makeTile(
    String title,
    String subtitle,
    String iconAssetName,
  ) {
    final text =
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(title,
          style: const TextStyle(
            fontSize: 16,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w500,
            height: 1.20,
          )),
      Text(
        subtitle,
        style: const TextStyle(
          color: Color(0xFF828696),
          fontSize: 14,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w500,
          height: 1.20,
        ),
      )
    ]);

    final textAndArrow = Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [text, Image.asset('assets/icons/arrow-right.png')]);

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(iconAssetName, width: 24, height: 24),
        const SizedBox(width: 12),
        Expanded(child: textAndArrow)
      ],
    );
  }
}
