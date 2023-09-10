import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hotels/presentation/hotel/hotel_screen.dart';
import 'package:hotels/presentation/styles/styles_text.dart';

import '../components/bottom_appbar_custom.dart';

class PaymentDoneScreen extends StatelessWidget {
  static const String routeName = 'paymentDone';

  const PaymentDoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Заказ оплачен')),
        body: Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 23),
            child: Column(
              children: [
                const SizedBox(height: 122),
                Container(
                    decoration: BoxDecoration(
                        color: const Color(0xFFF6F6F9),
                        borderRadius: BorderRadius.circular(1000)),
                    padding: const EdgeInsets.all(25),
                    child: Image.asset(
                      'assets/icons/party-popper.png',
                      width: 44,
                      height: 44,
                    )),
                const SizedBox(height: 32),
                const Text(
                  'Ваш заказ принят в работу',
                  style: StylesText.title,
                ),
                const SizedBox(height: 20),
                Text(
                  'Подтверждение заказа №${Random().nextInt(200000) + 100} может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.',
                  style: StylesText.comment,
                  textAlign: TextAlign.center,
                  softWrap: true,
                  maxLines: 10,
                )
              ],
            )),
        bottomNavigationBar: BottomAppBarCustom(
            child: FilledButton(
                onPressed: () => context.goNamed(HotelScreen.routeName),
                child: const Text('Супер!'))));
  }
}

// 122
