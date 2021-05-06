import 'dart:js' as js;
import 'package:flutter/material.dart';

class Topbar extends StatelessWidget implements PreferredSizeWidget {
  String title;
  Topbar({this.title});

  void jsOpenLink(String url) {
    js.context.callMethod('openLink', [url, '_blank']);
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => {jsOpenLink("https://oat431.github.io/")},
          child: Text('bio'),
        ),
        TextButton(
          onPressed: () =>
              {jsOpenLink("https://covid19.th-stat.com/api/open/today")},
          child: Text('this api'),
        ),
        TextButton(
          onPressed: () =>
              {jsOpenLink("https://covid19.ddc.moph.go.th/th/api")},
          child: Text('all api'),
        ),
      ],
      backgroundColor: Colors.white60,
      elevation: 0,
    );
  }
}
