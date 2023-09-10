import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hotels/presentation/payment_done/payment_done_screen.dart';

import 'presentation/booking/booking_screen.dart';
import 'presentation/hotel/hotel_screen.dart';
import 'presentation/room/room_screen.dart';

GoRouter _goRouter() {
  return GoRouter(initialLocation: '/hotel', routes: [
    GoRoute(
        name: HotelScreen.routeName,
        path: '/hotel',
        builder: (BuildContext context, GoRouterState state) {
          return const HotelScreen();
        },
        routes: [
          GoRoute(
              name: RoomScreen.routeName,
              path: 'room',
              builder: (BuildContext context, GoRouterState state) {
                return const RoomScreen();
              },
              routes: [
                GoRoute(
                    name: BookingScreen.routeName,
                    path: 'booking',
                    builder: (BuildContext context, GoRouterState state) {
                      return const BookingScreen();
                    },
                    routes: [
                      GoRoute(
                        name: PaymentDoneScreen.routeName,
                        path: 'payment',
                        builder: (BuildContext context, GoRouterState state) {
                          return const PaymentDoneScreen();
                        },
                      )
                    ])
              ])
        ]),
  ]);
}

final goRouterProvider = Provider<GoRouter>((ref) => _goRouter());
