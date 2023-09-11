import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hotels/presentation/booking/form/form_controller.dart';
import 'package:hotels/presentation/components/square_icon.dart';
import 'package:hotels/presentation/styles/styles_text.dart';

import '../../data/repository/api_repository.dart';
import '../../domain/booking/booking.dart';
import '../components/bottom_appbar_custom.dart';
import '../components/decorated_container_custom.dart';
import '../components/rating_name_address_section.dart';
import '../payment_done/payment_done_screen.dart';
import '../utils/format.dart';
import 'booking_details.dart';
import 'form/customer_details.dart';
import 'price_details.dart';
import 'form/tourist_details.dart';

final bookingProvider = FutureProvider.autoDispose<Booking>((ref) async {
  final apiRepo = ref.watch(apiRepoProvider);
  return apiRepo.getBooking();
});

class BookingScreen extends ConsumerWidget {
  static const String routeName = 'booking';

  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookingAsync = ref.watch(bookingProvider);
    final formKey = ref.watch(formKeyProvider);
    final form = ref.watch(formControllerProvider);

    return Scaffold(
        appBar: AppBar(title: const Text('Бронирование')),
        body: bookingAsync.when(
          data: (booking) => SingleChildScrollView(
              child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      DecoratedContainerCustom(
                          child: RatingNameAddressSection(
                              name: booking.hotelName,
                              adress: booking.hotelAdress,
                              rating: booking.horating,
                              ratingName: booking.ratingName)),
                      BookingDetails(booking),
                      const CustomerDetails(),
                      for (var i = 0; i < form.touristsDetails.length; i++)
                        TouristDetails(index: i),
                      const _AddTouristButton(),
                      PriceDetails(booking),
                      const SizedBox(height: 10)
                    ],
                  ))),
          error: (error, _) => Center(child: Text('Error: $error')),
          loading: () => const Center(child: CircularProgressIndicator()),
        ),
        bottomNavigationBar: bookingAsync.when(
            data: (booking) => BottomAppBarCustom(
                child: FilledButton(
                    onPressed: () {
                      if (ref
                          .read(formControllerProvider.notifier)
                          .validateForm()) {
                        context.pushNamed(PaymentDoneScreen.routeName);
                      }
                    },
                    child: Text(
                        'Оплатить ${Format.rubles(booking.fuelCharge + booking.serviceCharge + booking.tourPrice)}'))),
            error: (error, _) => null,
            loading: () => null));
  }
}

class _AddTouristButton extends ConsumerWidget {
  const _AddTouristButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DecoratedContainerCustom(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Добавить туриста', style: StylesText.title),
        InkWell(
          onTap: () =>
              ref.read(formControllerProvider.notifier).addTouristDetails(),
          child: const SquareIcon(
              imageAsset: 'assets/icons/plus.png',
              backgroundColor: Color(0xFF0D72FF)),
        ),
      ],
    ));
  }
}
