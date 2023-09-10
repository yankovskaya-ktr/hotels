import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

// TODO: сделать индикатор страниц
class ImagesPageView extends StatefulWidget {
  final List<String> imageUrls;

  const ImagesPageView(this.imageUrls, {super.key});

  @override
  State<ImagesPageView> createState() => _ImagesPageViewState();
}

class _ImagesPageViewState extends State<ImagesPageView> {
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final pages = PageView.builder(
      itemBuilder: _pageBuilder,
      itemCount: widget.imageUrls.length,
    );

    return Container(
        height: 257,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        clipBehavior: Clip.hardEdge,
        child: pages);
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
