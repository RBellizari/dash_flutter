import 'package:flutter/material.dart';
import 'package:flutter_dashboard/screens/appbar/appbar_page.dart';
import 'package:flutter_dashboard/screens/charts/charts_page.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Troco.Tech - Dashboard"})
      : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        children: <Widget>[
          Container(
            child: AppBarDash(),
          ),
          SizedBox(height: 50.0),
          
          Row(
children: <Widget>[
  
],
          ),
          Expanded(
           
              child: Container(
            width: 500,
            height: 100,
            child: ChartsDash(),
          )),
           Expanded(
           
              child: Container(
            width: 500,
            height: 100,
            child: ChartsDash(),
          )),
          SizedBox(height: 500.0),
        ],
      ),
    ));
  }
}
