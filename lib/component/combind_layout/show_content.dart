import 'package:flutter/material.dart';
import 'package:flutter_web_again/model/Covid.dart';
import 'package:flutter_web_again/component/content.dart';

class ShowContent extends StatelessWidget {
  Future future;
  ShowContent({this.future});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder<Covid>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Container(
              margin: EdgeInsets.all(3),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Content(
                    title: "Confirmed",
                    data: "${snapshot.data.confirmed}",
                  ),
                  Content(
                    title: "New case",
                    data: "${snapshot.data.newConfirmed}",
                  ),
                  Content(
                    title: "Recovered",
                    data: "${snapshot.data.recovered}",
                  ),
                  Content(
                    title: "Hospitalized ",
                    data: "${snapshot.data.hospitalized}",
                  ),
                  Content(
                    title: "Deaths",
                    data: "${snapshot.data.deaths}",
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Text(
                      "Update At ${snapshot.data.update}",
                      style: TextStyle(fontWeight: FontWeight.w100),
                    ),
                  ),
                ],
              ),
            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }

          // By default, show a loading spinner.
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
