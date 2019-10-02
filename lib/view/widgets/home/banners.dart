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
  int currentIndex = 0;

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

    List<Widget> dots = List.generate(widget.items.length, (index) {
      return Container(
        width: 8.0,
        height: 8.0,
        margin: EdgeInsets.symmetric(horizontal: 4.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: index == currentIndex ? Colors.blue : Colors.white,
        ),
      );
    });

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
                  onPageChanged: (nextIndex) {
                    setState(() {
                      currentIndex = nextIndex;
                    });
                  },
                  children: images,
                ),
              ),
            ),
            Positioned(
              bottom: 12.0,
              left: 16.0,
              right: 16.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Row(
                        children: dots,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
