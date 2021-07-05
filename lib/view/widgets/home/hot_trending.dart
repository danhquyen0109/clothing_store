import 'package:clothing_store/presenter/language/language_vi.dart';
import 'package:flutter/material.dart';

class HotTrendingView extends StatefulWidget {
  List hotItems;

  HotTrendingView({this.hotItems});

  @override
  State<StatefulWidget> createState() {
    return _HotTrendingState();
  }
}

class _HotTrendingState extends State<HotTrendingView> {
  @override
  Widget build(BuildContext context) {
    List<Widget> products = widget.hotItems.map((item) {
      return Container(
        padding: EdgeInsets.only(left: 16.0, bottom: 8.0),
        child: GestureDetector(
          onTap: () {
            print("Cúc cu");
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.asset(
                    item["image"].toString(),
                    height: MediaQuery.of(context).size.height / 6,
                    width: MediaQuery.of(context).size.height / 6,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    right: 0.0,
                    child: Container(
                      child: Center(
                          child: Text(
                        hot,
                        style: TextStyle(fontSize: 12.0, color: Colors.white),
                      )),
                      height: 16.0,
                      width: 32.0,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(4.0)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                item["price"],
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      );
    }).toList();

    Size media = MediaQuery.of(context).size;
    // Thêm khoảng trắng ở cuối danh sách sản phẩm
    products.add(Container(
      color: Colors.white,
      height: media.height / 6,
      width: 16,
    ));
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 5.0,
              offset: Offset(0.0, 0.0))
        ],
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  trending,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                FlatButton(
                  child: Text(
                    seeMore,
                    style: TextStyle(
//                      fontSize: 22,
//                      fontWeight: FontWeight.w800,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            height: media.height / 6 + 32.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              primary: false,
              shrinkWrap: true,
              children: products,
            ),
          ),
        ],
      ),
    );
  }
}
