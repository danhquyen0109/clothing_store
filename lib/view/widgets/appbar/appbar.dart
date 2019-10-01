import 'package:flutter/material.dart';

class AppBarHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppBarHomeState();
  }
}

class _AppBarHomeState extends State<AppBarHome> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      // floating: false,
      pinned: true,
      title: Text("HUNTER"),
      centerTitle: true,
      automaticallyImplyLeading: false,
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
                    style:
                        TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
      expandedHeight: 120.0,
      bottom: PreferredSize(
        child: Container(
          padding: EdgeInsets.all(16.0),
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
                  "Bạn tìm gì hôm nay?",
                  style: TextStyle(color: Colors.grey[600], fontSize: 16.0),
                ),
              ],
            ),
          ),
        ),
        preferredSize: Size.fromHeight(16.0),
      ),
    );
  }
}
