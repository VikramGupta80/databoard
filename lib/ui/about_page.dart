import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

typedef void FlipBack({bool backToTop});

class AboutPage extends StatelessWidget {
  static const String NEWSAPI_URL = "https://newsapi.org";

  AboutPage();

  _launchNewsApiURL() async {
    if (await canLaunch(NEWSAPI_URL)) {
      await launch(NEWSAPI_URL);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
        ),
        body: ListView(
          children: <Widget>[
            Center(
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  "DataBoard",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28.0),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 40.0),
                child: SizedBox(
                  height: 100.0,
                  width: 100.0,
                  child: Image.asset("assets/images/databoard_logo.png"),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: 15.0),
                child: Text(
                  "Experimented with Databoard",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 10.00),
                child: Text(
                  "by Crazy Ones",
                  style: TextStyle(fontSize: 14.0),
                ),
              ),
            ),
            Center(
              child: Text(
                "@....",
                style: TextStyle(fontSize: 14.0),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
