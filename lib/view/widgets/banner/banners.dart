import 'package:flutter/material.dart';

class BannerView extends StatefulWidget {
  List<ImageProvider> items;
  double aspectRatio;

  BannerView({this.items, this.aspectRatio});

  @override
  State<StatefulWidget> createState() {
    return _BannerViewState();
  }
}

class _BannerViewState extends State<BannerView> {
  @override
  Widget build(BuildContext context) {
    List<Widget> images = widget.items
        .map((image) => Image(
              image: image,
              fit: BoxFit.cover,
            ))
        .toList();
    return SliverToBoxAdapter(
      child: AspectRatio(
        aspectRatio: widget.aspectRatio,
        child: Container(
          child: PageView(
            children: images,
          ),
        ),
      ),
    );
  }
}
