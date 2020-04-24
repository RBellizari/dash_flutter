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
      body: Container(
        child: Row(
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Container(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: <Widget>[
                      DrawerHeader(
                        child: Text(
                          'Side menu',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.green,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/cover.jpg'))),
                      ),
                      ListTile(
                        leading: Icon(Icons.input),
                        title: Text('Welcome'),
                        onTap: () => {},
                      ),
                      ListTile(
                        leading: Icon(Icons.verified_user),
                        title: Text('Profile'),
                        onTap: () => {Navigator.of(context).pop()},
                      ),
                      ListTile(
                        leading: Icon(Icons.settings),
                        title: Text('Settings'),
                        onTap: () => {Navigator.of(context).pop()},
                      ),
                      ListTile(
                        leading: Icon(Icons.border_color),
                        title: Text('Feedback'),
                        onTap: () => {Navigator.of(context).pop()},
                      ),
                      ListTile(
                        leading: Icon(Icons.exit_to_app),
                        title: Text('Logout'),
                        onTap: () => {Navigator.of(context).pop()},
                      ),
                    ],
                  ),
                  color: Colors.green,
                )),
            Expanded(
              flex: 8,
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[

                      //Operações
                      Container(
                        
                        child: Row(children: <Widget>[
                          Expanded(
                            flex: 3,
                            child: Container(
                              margin: EdgeInsets.all(10),
      height: 200,
      decoration: BoxDecoration(
        color: Colors.yellow,
        border: Border.all(color: Colors.black, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
    ),
                          ),
                          Expanded(
                             flex: 3,
                            child: Container(
                              margin: EdgeInsets.all(10),
      height: 200,
      decoration: BoxDecoration(
        color: Colors.yellow,
        border: Border.all(color: Colors.black, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
    ),
                          ),
                          Expanded(
                             flex: 3,
                            child:Container(
                              margin: EdgeInsets.all(10),
      height: 200,
      decoration: BoxDecoration(
        color: Colors.yellow,
        border: Border.all(color: Colors.black, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(18)),
      ),
    ),
                          ),
                          Expanded(
                             flex: 3,
                            child: Container(
                              margin: EdgeInsets.all(10),
      height: 200,
      decoration: BoxDecoration(
        color: Colors.yellow,
        border: Border.all(color: Colors.black, width: 3),
        borderRadius: BorderRadius.all(Radius.circular(18)),
      ),
    ),
                          ),
                        ]),
                      ),

                      //Graficos
                      Container(
                        padding: EdgeInsets.all(10.0),
                        child: Row(children: <Widget>[
                          Expanded(
                            child: FlutterLogo(
                              size: 100,
                              colors: Colors.red,
                            ),
                          ),
                          Expanded(
                            child: FlutterLogo(
                              size: 100,
                              colors: Colors.purple,
                            ),
                          ),
                          Expanded(
                            child: FlutterLogo(
                              size: 100,
                              colors: Colors.green,
                            ),
                          ),
                         
                        ]),
                      ),

                      //Enquadramento
                      Container(
                        padding: EdgeInsets.all(10.0),
                        child: Row(children: <Widget>[
                          Expanded(
                            child: FlutterLogo(
                              size: 100,
                              colors: Colors.red,
                            ),
                          ),
                          Expanded(
                            child: FlutterLogo(
                              size: 100,
                              colors: Colors.purple,
                            ),
                          ),
                          
                        ]),
                      ),

                      //Prazo
                      Container(
                        padding: EdgeInsets.all(10.0),
                        child: Row(children: <Widget>[
                          Expanded(
                            child: FlutterLogo(
                              size: 100,
                              colors: Colors.red,
                            ),
                          ),
                          Expanded(
                            child: FlutterLogo(
                              size: 100,
                              colors: Colors.purple,
                            ),
                          ),
                         
                        ]),
                      ),

                      //Tarefas
                      Container(
                        
                        child: Row(children: <Widget>[
                          Expanded(
                            child: FlutterLogo(
                              size: 100,
                              colors: Colors.red,
                            ),
                          ),
                          Expanded(
                            child: FlutterLogo(
                              size: 100,
                              colors: Colors.purple,
                            ),
                          ),
                          
                        ]),
                      ),
                    ]),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.purple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
