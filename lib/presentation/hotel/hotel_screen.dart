import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hotels/presentation/hotel/hotel_additional_info.dart';
import 'package:hotels/presentation/room/room_screen.dart';

import '../../data/repository/api_repository.dart';
import '../../domain/hotel/hotel.dart';
import '../components/bottom_appbar_custom.dart';
import 'hotel_main_info.dart';

final hotelProvider = FutureProvider.autoDispose<Hotel>(
  (ref) async {
    final apiRepo = ref.watch(apiRepoProvider);
    return apiRepo.getHotel();
  },
);

class HotelScreen extends ConsumerWidget {
  static const String routeName = 'hotel';

  const HotelScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hotelAsync = ref.watch(hotelProvider);
    return Scaffold(
        appBar: AppBar(title: const Text('Отель')),
        body: hotelAsync.when(
          data: (hotel) => SingleChildScrollView(
              child: Column(
            children: [
              HotelMainInfo(hotel),
              HotelAdditionalInfo(hotel),
            ],
          )),
          error: (error, _) => Center(child: Text('Error: $error')),
          loading: () => const Center(child: CircularProgressIndicator()),
        ),
        bottomNavigationBar: hotelAsync.asData != null
            ? BottomAppBarCustom(
                child: FilledButton(
                    onPressed: () => context.pushNamed(RoomScreen.routeName),
                    child: const Text('К выбору номера')))
            : null);
  }
}
