import 'package:flutter/material.dart';

class Covid {
  final int confirmed;
  final int newConfirmed;
  final int recovered;
  final int hospitalized;
  final int deaths;
  var update;

  Covid({
    @required this.confirmed,
    @required this.newConfirmed,
    @required this.recovered,
    @required this.hospitalized,
    @required this.deaths,
    @required this.update,
  });

  factory Covid.fromJson(Map<String, dynamic> json) {
    return Covid(
      confirmed: json['Confirmed'],
      newConfirmed: json['NewConfirmed'],
      recovered: json['Recovered'],
      hospitalized: json['Hospitalized'],
      deaths: json['Deaths'],
      update: json['UpdateDate'],
    );
  }
}
