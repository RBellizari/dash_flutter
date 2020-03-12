import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(7), boxShadow: [
        BoxShadow(color: Colors.black26, blurRadius: 4),
      ]),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Text('teste'),
          ),
          Expanded(
            flex: 7,
            child: Text('test1'
               ),
          ),
        ],
      ),
    );
  }
}