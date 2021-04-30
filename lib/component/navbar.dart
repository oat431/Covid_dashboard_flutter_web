import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Topbar extends StatelessWidget implements PreferredSizeWidget {
  String title;
  Topbar({this.title});

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        onTap: () => {},
        child: Icon(Icons.smoke_free),
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => {launch("https://oat431.github.io/")},
          child: Text('bio'),
        ),
        TextButton(
          onPressed: () =>
              {launch("https://covid19.th-stat.com/api/open/today")},
          child: Text('this api'),
        ),
        TextButton(
          onPressed: () => {launch("https://covid19.ddc.moph.go.th/th/api")},
          child: Text('all api'),
        ),
      ],
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }
}
