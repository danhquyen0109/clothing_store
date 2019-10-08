import 'package:clothing_store/presenter/language/language_vi.dart';
import 'package:flutter/material.dart';

class StyleView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StyleViewState();
  }
}

class _StyleViewState extends State<StyleView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      height: 692,
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
      child: Column(
        children: <Widget>[
          Center(
            child: Text(style.toUpperCase(),
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500)),
          ),
          SizedBox(
            height: 16.0,
          ),
          Container(
            height: 300,
            child: Row(
              children: <Widget>[
                Container(
                  width: (MediaQuery.of(context).size.width - 48) / 2,
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "assets/img/style/office.png",
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      Center(
                        child: Text(
                          office.toUpperCase(),
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Center(
                        child: Text(officeTitle),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 16.0,
                ),
                Container(
                  width: (MediaQuery.of(context).size.width - 48) / 2,
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "assets/img/style/basic.jpg",
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      Center(
                        child: Text(
                          basic.toUpperCase(),
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Center(
                        child: Text(basicTitle),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Container(
            height: 300,
            child: Row(
              children: <Widget>[
                Container(
                  width: (MediaQuery.of(context).size.width - 48) / 2,
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "assets/img/style/street_wear.png",
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      Center(
                        child: Text(
                          streetWear.toUpperCase(),
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Center(
                        child: Text(streetTitle),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 16.0,
                ),
                Container(
                  width: (MediaQuery.of(context).size.width - 48) / 2,
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "assets/img/style/sport.png",
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      Center(
                        child: Text(
                          sport.toUpperCase(),
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Center(
                        child: Text(sportTitle),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
