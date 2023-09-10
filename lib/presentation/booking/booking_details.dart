import 'package:flutter/material.dart';

import '../../domain/booking/booking.dart';
import '../components/decorated_container_custom.dart';
import '../components/make_table_row.dart';

class BookingDetails extends StatelessWidget {
  final Booking booking;

  const BookingDetails(this.booking, {super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedContainerCustom(
      child: Table(
        columnWidths: const {0: FixedColumnWidth(140)},
        textBaseline: TextBaseline.alphabetic,
        children: [
          makeTableRow('Вылет из', booking.departure),
          makeTableRow('Страна, город', booking.arrivalCountry),
          makeTableRow(
            'Даты',
            '${booking.tourDateStart} – ${booking.tourDateStop}',
          ),
          makeTableRow(
            'Кол-во ночей',
            '${booking.numberOfNights} ночей',
          ),
          makeTableRow('Отель', booking.hotelName),
          makeTableRow('Номер', booking.room),
          makeTableRow('Питание', booking.nutrition,
              padding: const EdgeInsets.all(0)),
        ],
      ),
    );
  }
}
