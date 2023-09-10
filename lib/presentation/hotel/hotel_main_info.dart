import 'package:flutter/material.dart';

import '../../domain/hotel/hotel.dart';
import '../components/images_page_view.dart';
import '../components/price_section.dart';
import '../components/rating_name_address_section.dart';

class HotelMainInfo extends StatelessWidget {
  final Hotel hotel;
  const HotelMainInfo(this.hotel, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImagesPageView(hotel.imageUrls),
          const SizedBox(height: 16),
          RatingNameAddressSection(
              name: hotel.name,
              adress: hotel.adress,
              rating: hotel.rating,
              ratingName: hotel.ratingName),
          const SizedBox(height: 16),
          PriceSection(hotel.minimalPrice, hotel.priceForIt),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
