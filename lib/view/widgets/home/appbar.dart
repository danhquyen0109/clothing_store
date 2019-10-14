import 'package:clothing_store/presenter/language/language_vi.dart';
import 'package:flutter/material.dart';

Widget appBarHome() {
  return AppBar(
    title: Text(
      appName,
      style: TextStyle(letterSpacing: 3.2),
    ),
    elevation: 0.0,
    centerTitle: true,
    leading: IconButton(
      icon: Icon(Icons.menu),
      onPressed: () {},
    ),
    backgroundColor: Colors.transparent,
    actions: <Widget>[
      Stack(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
          Visibility(
            visible:
                true, // nếu có sản phẩm thì true, không thì false (hiện tại đang để true)
            child: Positioned(
              top: 8.0,
              right: 8.0,
              child: Container(
                width: 16.0,
                height: 16.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.deepOrangeAccent,
                ),
                child: Text(
                  "1",
                  style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      )
    ],
    bottom: PreferredSize(
      child: Container(
        padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
        child: Container(
          height: 40.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 5.0,
                  offset: Offset(0.0, 0.0)),
            ],
          ),
          child: Row(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.grey[600],
                ),
                onPressed: () {},
              ),
              Text(
                searchText,
                style: TextStyle(color: Colors.grey[600], fontSize: 16.0),
              ),
            ],
          ),
        ),
      ),
      preferredSize: Size.fromHeight(50.0),
    ),
  );
}
