import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class ImagesPageView extends StatefulWidget {
  final List<String> imageUrls;

  const ImagesPageView(this.imageUrls, {super.key});

  @override
  State<ImagesPageView> createState() => _ImagesPageViewState();
}

class _ImagesPageViewState extends State<ImagesPageView> {
  late PageController pageController;
  late int selectedPage;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    selectedPage = 0;
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int pagesCount = widget.imageUrls.length;

    final pages = PageView.builder(
      itemBuilder: _pageBuilder,
      itemCount: pagesCount,
      onPageChanged: (value) => setState(() {
        selectedPage = value;
      }),
    );

    final dotIndicator = DotsIndicator(
      dotsCount: pagesCount,
      position: selectedPage,
      decorator: DotsDecorator(
          size: const Size.fromRadius(3.5),
          activeSize: const Size.fromRadius(3.5),
          spacing: const EdgeInsets.all(2.5),
          activeColor: Colors.black,
          colors: [
            for (int i = 0; i < pagesCount; i++)
              Colors.black.withOpacity(pow(
                      ((pagesCount - (i - selectedPage).abs() / 2) /
                          pagesCount),
                      4)
                  .toDouble())
          ]),
    );

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
            height: 257,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            clipBehavior: Clip.hardEdge,
            child: pages),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 7.5),
          margin: const EdgeInsets.only(bottom: 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.white),
          child: dotIndicator,
        )
      ],
    );
  }

  Widget _pageBuilder(BuildContext context, int index) {
    String url = widget.imageUrls[index];
    return CachedNetworkImage(
      imageUrl: url,
      fit: BoxFit.cover,
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
