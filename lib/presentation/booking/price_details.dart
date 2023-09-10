import 'package:flutter/material.dart';

import '../../domain/booking/booking.dart';
import '../components/decorated_container_custom.dart';
import '../components/make_table_row.dart';
import '../utils/format.dart';

class PriceDetails extends StatelessWidget {
  final Booking booking;

  const PriceDetails(this.booking, {super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedContainerCustom(
        child: Table(
            columnWidths: const {1: FixedColumnWidth(132)},
            textBaseline: TextBaseline.alphabetic,
            children: [
              makeTableRow('Тур', Format.rubles(booking.tourPrice),
                  dataAlign: TextAlign.right),
              makeTableRow('Топливный сбор', Format.rubles(booking.fuelCharge),
                  dataAlign: TextAlign.right),
              makeTableRow(
                  'Сервисный сбор', Format.rubles(booking.serviceCharge),
                  dataAlign: TextAlign.right),
              makeTableRow(
                  'К оплате',
                  Format.rubles(booking.fuelCharge +
                      booking.serviceCharge +
                      booking.tourPrice),
                  padding: const EdgeInsets.all(0),
                  dataAlign: TextAlign.right,
                  dataStyle: const TextStyle(
                    color: Color(0xFF0D72FF),
                    fontSize: 16,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w600,
                    height: 1.20,
                  )),
            ]));
  }
}
