import 'package:flutter/material.dart';
import 'package:flutter_dashboard/screens/appbar/appbar_page.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Troco.Tech - Dashboard"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
    body: 
    Container(
      child: AppBarDash(),
));
  }
}