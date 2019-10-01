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
    Size media = MediaQuery.of(context).size;
    List<Widget> images = widget.items
        .map((image) => Container(
              padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image(
                  image: image,
                  fit: BoxFit.cover,
                ),
              ),
            ))
        .toList();
    return Container(
      child: AspectRatio(
        aspectRatio: widget.aspectRatio,
        child: Stack(
          children: <Widget>[
            Positioned(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height:
                    (MediaQuery.of(context).size.width) / widget.aspectRatio,
                child: PageView(
                  children: images,
                ),
              ),
            ),
            Positioned(
              bottom: 24.0,
              left: 16.0,
              right: 16.0,
              child: Container(
                  color: Colors.black.withOpacity(0.3),
                  height: 40.0,
                  child: Row()),
            ),
          ],
        ),
      ),
    );
  }
}