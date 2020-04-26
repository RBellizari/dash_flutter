import 'package:flutter/material.dart';
import 'package:flutter_dashboard/screens/appbar/appbar_page.dart';
import 'package:flutter_dashboard/screens/charts/chart.dart';
import 'package:flutter_dashboard/screens/charts/chart_01.dart';
import 'package:flutter_dashboard/screens/charts/chart_02.dart';
import 'package:flutter_dashboard/screens/charts/chart_line.dart';
import 'package:flutter_dashboard/screens/charts/chart_pie.dart';
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
                        title: Text('Operacional'),
                        onTap: () => {},
                      ),
                      ListTile(
                        leading: Icon(Icons.verified_user),
                        title: Text('Estratégico'),
                        onTap: () => {Navigator.of(context).pop()},
                      ),
                      ListTile(
                        leading: Icon(Icons.settings),
                        title: Text('Analítico'),
                        onTap: () => {Navigator.of(context).pop()},
                      ),
                      ListTile(
                        leading: Icon(Icons.border_color),
                        title: Text('Configurações'),
                        onTap: () => {Navigator.of(context).pop()},
                      ),
                      ListTile(
                        leading: Icon(Icons.exit_to_app),
                        title: Text('Sair'),
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
                color: const Color(0xFFf6f5fb),
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        //Operações
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Row(children: <Widget>[
                            Expanded(
                              flex: 3,
                              child: Container(
                                margin: EdgeInsets.all(10),
                                height: 200,
                                decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
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
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
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
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
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
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                ),
                              ),
                            ),
                          ]),
                        ),

                        //Graficos
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Row(children: <Widget>[
                            Expanded(
                              flex: 4,
                              child: Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.all(10),
                                height: 300,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 7.0,
                                      color: Colors.grey.withOpacity(.2),
                                      offset: Offset(5.0, 6.0),
                                    ),
                                  ],
                                ),
                                child: DonutAutoLabelChart(),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.all(10),
                                height: 300,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 7.0,
                                      color: Colors.grey.withOpacity(.2),
                                      offset: Offset(5.0, 6.0),
                                    ),
                                  ],
                                ),
                                child: PosicaoFinancMut(),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.all(10),
                                height: 300,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 7.0,
                                      color: Colors.grey.withOpacity(.2),
                                      offset: Offset(5.0, 6.0),
                                    ),
                                  ],
                                ),
                                child: StackedBarChart(),
                              ),
                            ),
                          ]),
                        ),

                        //Enquadramento
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Row(children: <Widget>[
                            Expanded(
                              flex: 8,
                              child: Container(
                                 padding: EdgeInsets.all(10),
                                margin: EdgeInsets.all(10),
                                height: 300,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 7.0,
                                      color: Colors.grey.withOpacity(.2),
                                      offset: Offset(5.0, 6.0),
                                    ),
                                  ],
                                ),
                                child: 
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: StackedBarChart(),
                                    )
                                  ]
                                )
                                
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Container(
                                margin: EdgeInsets.all(10),
                                height: 200,
                                decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                ),
                              ),
                            ),
                          ]),
                        ),

                        //Prazo
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Row(children: <Widget>[
                            Expanded(
                              flex: 6,
                              child: Container(
                                margin: EdgeInsets.all(10),
                                height: 200,
                                decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 6,
                              child: Container(
                                margin: EdgeInsets.all(10),
                                height: 200,
                                decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                ),
                              ),
                            ),
                          ]),
                        ),

                        //Tarefas
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Row(children: <Widget>[
                            Expanded(
                              flex: 6,
                              child: Container(
                                margin: EdgeInsets.all(10),
                                height: 200,
                                decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 6,
                              child: Container(
                                margin: EdgeInsets.all(10),
                                height: 200,
                                decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                ),
                              ),
                            ),
                          ]),
                        ),
                      ]),
                ),
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
