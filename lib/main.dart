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
      title: 'Dashboard - Recebiveis1',
      //theme: ThemeData.light(),
      
      home: Scaffold(
        appBar: PreferredSize(
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0, 3.0),
                blurRadius: 7.0,
              )
            ]),
            child: AppBar(
              backgroundColor: Color(0xFFFFFFFF),
              elevation: 0.0,
              title: Text("Test"),
            ),
          ),
          preferredSize: Size.fromHeight(kToolbarHeight),
        ),
        body: HomePage(),
      )
      
      
    );
  }
}


