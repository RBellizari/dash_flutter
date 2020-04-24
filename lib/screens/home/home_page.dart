import 'package:flutter/material.dart';
import 'package:flutter_dashboard/screens/appbar/appbar_page.dart';
import 'package:flutter_dashboard/screens/charts/charts_page.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Dashboard - Recebiveis"})
      : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Container(
        child: Row(
          children: <Widget>[
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.green,
                )),
            Expanded(
              flex: 8,
              child: Container(
                color: Colors.yellow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
