import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../data/api/room/api_rooms.dart';
import '../../data/repository/api_repository.dart';
import '../../domain/room/room.dart';
import '../booking/booking_screen.dart';
import '../components/decorated_container_custom.dart';
import '../components/pequliarities_tiles.dart';
import '../components/images_page_view.dart';
import '../components/price_section.dart';
import '../hotel/hotel_screen.dart';
import '../styles/styles_text.dart';

final roomsProvider = FutureProvider.autoDispose<ApiRooms>(
  (ref) async {
    final apiRepo = ref.watch(apiRepoProvider);
    return apiRepo.getRooms();
  },
);

class RoomScreen extends ConsumerWidget {
  static const String routeName = 'room';

  const RoomScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hotelAsync = ref.watch(hotelProvider);
    final roomsAsync = ref.watch(roomsProvider);
    return Scaffold(
      appBar: AppBar(
          title: hotelAsync.valueOrNull != null
              ? Text(hotelAsync.value!.name)
              : null),
      body: roomsAsync.when(
        data: (data) => ListView.builder(
          itemCount: data.rooms.length,
          itemBuilder: (context, index) {
            final room = data.rooms[index];
            return _RoomItem(room);
          },
        ),
        error: (error, _) => Center(child: Text('Error: $error')),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}

class _RoomItem extends StatelessWidget {
  final Room room;

  const _RoomItem(this.room);

  @override
  Widget build(BuildContext context) {
    return DecoratedContainerCustom(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImagesPageView(room.imageUrls),
          const SizedBox(height: 8),
          Text(room.name, style: StylesText.title),
          const SizedBox(height: 8),
          Peculiarities(room.peculiarities),
          const SizedBox(height: 8),
          const _MoreButton(),
          const SizedBox(height: 16),
          PriceSection(room.price, room.pricePer),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                  child: FilledButton(
                      onPressed: () =>
                          context.pushNamed(BookingScreen.routeName),
                      child: const Text('Выбрать номер')))
            ],
          )
        ],
      ),
    );
  }
}

class _MoreButton extends StatelessWidget {
  const _MoreButton();

  @override
  Widget build(BuildContext context) {
    return FilledButton(
        onPressed: () => {},
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
                const Color(0xFF0D72FF).withOpacity(0.1)),
            shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
            padding: const MaterialStatePropertyAll(
                EdgeInsets.symmetric(vertical: 5)),
            textStyle: const MaterialStatePropertyAll(
              TextStyle(
                color: Color(0xFF0D72FF),
                fontSize: 16,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w500,
                height: 1.20,
              ),
            )),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(width: 10),
            const Text(
              'Подробнее о номере',
              style: TextStyle(
                color: Color(0xFF0D72FF),
                fontSize: 16,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w500,
                height: 1.20,
              ),
            ),
            const SizedBox(width: 2),
            Image.asset('assets/icons/arrow-right-blue.png',
                width: 24, height: 24),
            const SizedBox(width: 2),
          ],
        ));
  }
}
