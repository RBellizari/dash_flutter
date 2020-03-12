import 'package:flutter/material.dart';
import 'package:flutter_dashboard/screens/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Troco.Tech1',
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}


