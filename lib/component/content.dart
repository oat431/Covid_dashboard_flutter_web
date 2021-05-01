import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  String title;
  String data;
  Content({this.title, this.data});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 8,
      width: MediaQuery.of(context).size.width / 1.5,
      margin: EdgeInsets.all(15),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
        ),
        elevation: 1.5,
        child: Row(
          children: [
            SizedBox(width: 15),
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
      ),
    );
  }
}
