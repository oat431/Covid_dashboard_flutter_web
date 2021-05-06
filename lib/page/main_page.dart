import 'package:flutter/material.dart';
import 'package:flutter_web_again/model/Covid.dart';
import 'package:flutter_web_again/component/navbar.dart';
import 'package:flutter_web_again/services/fetch_covid.dart';
import 'package:flutter_web_again/component/combind_layout/show_content.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Future<Covid> futureCovid;

  @override
  void initState() {
    super.initState();
    futureCovid = fetchCovid();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Topbar(
        title: 'Covid info board with flutter',
      ),
      body: ShowContent(
        future: futureCovid,
      ),
    );
  }
}
