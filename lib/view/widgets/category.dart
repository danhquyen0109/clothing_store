import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CateGoryView extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _CategoryViewState();
  }
}

Widget buildTitle(String title) {
  return Center(
    child: Container(
      child: Text(
        title,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
      ),
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      decoration: BoxDecoration(
          border: Border.all(
              width: 2, color: Colors.white, style: BorderStyle.solid)),
    ),
  );
}

class _CategoryViewState extends State<CateGoryView> {
  Widget _buildCategory(BuildContext context, DocumentSnapshot document) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.all(5),
        child: Card(
          elevation: 2,
          child: Container(
            child: Container(
              color: Color.fromRGBO(0, 0, 0, 0.4),
              child: buildTitle(document['name']),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(document['image']), fit: BoxFit.fill),
            ),
          ),
        ),
      ),
      onTap: () => {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Danh mục"),
        ),
        body: StreamBuilder(
            stream: Firestore.instance.collection('category').snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) return const Text("loading...");
              return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 0.8),
                  itemCount: 6,
                  itemBuilder: (context, i) =>
                      _buildCategory(context, snapshot.data.documents[i]));
            })
        // categories == null
        //     ? const Center(child: const CircularProgressIndicator())
        );
  }
}
