import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  String title;
  String data;
  Content({this.title, this.data});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 10,
      width: MediaQuery.of(context).size.width / 1.5,
      margin: EdgeInsets.all(15),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
        ),
        elevation: 6,
        child: Row(
          children: [
            SizedBox(width: 15),
            Text(
              "$title: ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            Text(
              "$data",
              style: TextStyle(fontSize: 24),
            ),
            Text(
              " cases",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w100,
                color: Colors.black.withOpacity(75),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
