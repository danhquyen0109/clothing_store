import 'package:clothing_store/presenter/language/language_vi.dart';
import 'package:clothing_store/presenter/mock_data/mock_data.dart';
import 'package:clothing_store/view/widgets/home/appbar.dart';
import 'package:clothing_store/view/widgets/home/banners.dart';
import 'package:clothing_store/view/widgets/home/bottom_bar.dart';
import 'package:clothing_store/view/widgets/home/hot_trending.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String route = '/home';
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ClipPath(
            clipper: CurveClipper(),
            child: Container(
              width: media.width,
              height: media.height / 2.4,
              color: Colors.blue,
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: appBarHome(),
            body: ListView(
              children: <Widget>[
                BannerView(
                  items: homeBanners,
                  aspectRatio: 2.4,
                ),
                SizedBox(height: 8.0,),
                Container(
                  child: Column(
                    children: <Widget>[
                      HotTrendingView(hotItems: hotItems,),
                      // Các sản phẩm
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            width: media.width,
            height: 60,
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 5.0,
                        offset: Offset(0.0, 0.0)),
                  ],
                ),
                child: BottomBarHome()),
          ),
        ],
      ),
    );
  }
}

class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
