import 'package:clothing_store/presenter/mock_data/mock_data.dart';
import 'package:clothing_store/view/widgets/appbar/appbar.dart';
import 'package:clothing_store/view/widgets/banner/banners.dart';
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
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          AppBarHome(),
          BannerView(
            items: homeBanners,
            aspectRatio: 1.78,
          ),
          SliverFixedExtentList(
            itemExtent: 56.0,
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container();
            }),
          ),
        ],
      ),
    );
  }
}
