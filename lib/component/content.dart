import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  String title;
  String data;
  Content({this.title, this.data});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      child: Row(
        children: [
          Text(
            "$title: ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          Text(
            "$data",
            style: TextStyle(fontSize: 30),
          ),
        ],
      ),
    );
  }
}
