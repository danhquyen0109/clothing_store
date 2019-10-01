import 'package:flutter/material.dart';

Color color = Color(0xffff024a);

class BottomBarHome extends StatefulWidget {
  BottomBarHome({Key key}) : super(key: key);

  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBarHome> {
  @override
  Widget build(BuildContext context) {
    double itemWidth = MediaQuery.of(context).size.width / 5;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: itemWidth,
          alignment: Alignment.center,
          child: Ink(
            child: InkWell(
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.home,
                    color: color,
                    size: 25,
                  ),
                  Text("Trang chủ")
                ],
              ),
            ),
          ),
        ),
        Container(
          width: itemWidth,
          alignment: Alignment.center,
          child: Ink(
            child: InkWell(
              onTap: () {
                print("hola!!");
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.view_module,
                    color: Colors.grey,
                    size: 25,
                  ),
                  Text("Danh mục")
                ],
              ),
            ),
          ),
        ),
        Container(
          width: itemWidth,
          alignment: Alignment.center,
          child: Ink(
            child: InkWell(
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                    size: 25,
                  ),
                  Text("Tìm kiếm")
                ],
              ),
            ),
          ),
        ),
        Container(
          width: itemWidth,
          alignment: Alignment.center,
          child: Ink(
            child: InkWell(
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.grey,
                    size: 25,
                  ),
                  Text("Giỏ hàng")
                ],
              ),
            ),
          ),
        ),
        Container(
          width: itemWidth,
          alignment: Alignment.center,
          child: Ink(
            child: InkWell(
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.notifications,
                    color: Colors.grey,
                    size: 25,
                  ),
                  Text("Thông báo")
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
