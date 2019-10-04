import 'package:clothing_store/presenter/language/language_vi.dart';
import 'package:flutter/material.dart';

class Collection extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CollectionState();
  }
}

class _CollectionState extends State<Collection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 5.0,
              offset: Offset(0.0, 0.0))
        ],
      ),
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16.0),
            width: MediaQuery.of(context).size.width / 2,
            height: 250,
            child: Image.asset(
              "assets/img/collections/collection1.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 16.0, right: 16.0, bottom: 8.0),
                height: 125,
                width: MediaQuery.of(context).size.width / 2,
                child: Image.asset(
                  "assets/img/collections/women.png",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 8.0, right: 16.0, bottom: 16.0),
                height: 125,
                width: MediaQuery.of(context).size.width / 2,
                child: Image.asset(
                  "assets/img/collections/men.png",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
