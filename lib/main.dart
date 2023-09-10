import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'router.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);

    return MaterialApp.router(
      routerConfig: goRouter,
      title: 'Hotels',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0D72FF)),
        bottomAppBarTheme: const BottomAppBarTheme(
            padding: EdgeInsets.zero,
            color: Colors.white,
            surfaceTintColor: Colors.white),
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          surfaceTintColor: Colors.white,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w500,
            height: 1.20,
          ),
        ),
        scaffoldBackgroundColor: const Color(0xFFF6F6F9),
        filledButtonTheme: FilledButtonThemeData(
            style: ButtonStyle(
                backgroundColor:
                    const MaterialStatePropertyAll(Color(0xFF0D72FF)),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
                padding: const MaterialStatePropertyAll(
                    EdgeInsets.symmetric(vertical: 15)),
                minimumSize: const MaterialStatePropertyAll(Size.zero),
                textStyle: const MaterialStatePropertyAll(
                  TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w500,
                    height: 1.10,
                    letterSpacing: 0.10,
                  ),
                ))),
        inputDecorationTheme: const InputDecorationTheme(
            filled: true,
            fillColor: Color(0xFFF6F6F9),
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            labelStyle: TextStyle(
                color: Color(0xFFA8ABB6),
                fontSize: 17,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
                height: 1.20,
                letterSpacing: 0.17),
            errorStyle: TextStyle(height: 0)),
        textSelectionTheme: const TextSelectionThemeData(
            cursorColor: Color(0xFFA8ABB6),
            selectionColor: Colors.transparent,
            selectionHandleColor: Colors.transparent),
        expansionTileTheme: ExpansionTileThemeData(
          backgroundColor: Colors.white,
          collapsedBackgroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          collapsedShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 3),
          childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        ),
      ),
    );
  }
}
