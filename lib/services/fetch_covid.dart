import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter_web_again/model/Covid.dart';

Future<Covid> fetchCovid() async {
  final response =
      await http.get(Uri.https('covid19.th-stat.com', 'json/covid19v2/getTodayCases.json'));

  if (response.statusCode == 200) {
    return Covid.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}