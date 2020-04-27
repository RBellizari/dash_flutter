import 'package:flutter/material.dart';
import 'package:flutter_dashboard/screens/charts/chart.dart';
import 'package:flutter_dashboard/screens/charts/chart_01.dart';
import 'package:flutter_dashboard/screens/charts/chart_02.dart';
import 'package:flutter_dashboard/screens/charts/chart_03.dart';
import 'package:flutter_dashboard/screens/charts/chart_04.dart';
import 'package:flutter_dashboard/screens/charts/chart_05.dart';
import 'package:flutter_dashboard/screens/charts/chart_06.dart';
import 'package:flutter_dashboard/screens/charts/chart_07.dart';

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
                          'Alfeu da Lycra',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFFFFF),
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.input),
                        title: Text('Operacional'),
                        onTap: () => {},
                      ),
                      ListTile(
                        leading: Icon(Icons.verified_user),
                        title: Text('Estratégico'),
                      ),
                      ListTile(
                        leading: Icon(Icons.settings),
                        title: Text('Analítico'),
                      ),
                      ListTile(
                        leading: Icon(Icons.border_color),
                        title: Text('Configurações'),
                      ),
                      ListTile(
                        leading: Icon(Icons.exit_to_app),
                        title: Text('Sair'),
                      ),
                    ],
                  ),
                  color: const Color(0xFFFFFFFF),
                )),
            Expanded(
              flex: 8,
              child: Container(
                width: double.infinity,
                color: const Color(0xFFf0f4f6),
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        //Operações
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Row(children: <Widget>[
                            //Operações Ativas 
                            Expanded(
                              flex: 3,
                              child: Container(
                                  padding: EdgeInsets.all(10),
                                  margin: EdgeInsets.all(10),
                                  height: 200,
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
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          child: Text('Operações Ativas'),
                                        ),
                                        SizedBox( height: 30),
                                        Container(
                                            child: Row(children: <Widget>[
                                          Expanded(
                                            flex: 6,
                                            child: Center(
                                              child: Text(
                                                '35',
                                                style: TextStyle(
                                                  fontSize: 22,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 6,
                                            child: Center(
                                              child: Text(
                                                'R\$ 66.575.941,00',
                                                style: TextStyle(
                                                  fontSize: 22,
                                                  color: Colors.black
                                                ),
                                              ),
                                            ),
                                          )
                                        ])),
                                        SizedBox( height: 5),
                                        Container(
                                            child: Row(children: <Widget>[
                                          Expanded(
                                            flex: 6,
                                            child: Center(
                                              child: Text(
                                                'Operações',
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 6,
                                            child: Center(
                                              child: Text(
                                                'Saldo Atual',
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ),
                                          )
                                        ])),
                                        SizedBox( height: 20),
                                        Container(
                                            child: Row(children: <Widget>[
                                          Expanded(
                                            flex: 6,
                                            child: Center(
                                              child: Text(
                                                '+2%',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.green,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 6,
                                            child: Center(
                                              child: Text(
                                                '+5%',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.green,
                                                ),
                                              ),
                                            ),
                                          )
                                        ])),
                                      ])),
                            ),

                            //Operações Liquidadas 
                           Expanded(
                              flex: 3,
                              child: Container(
                                  padding: EdgeInsets.all(10),
                                  margin: EdgeInsets.all(10),
                                  height: 200,
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
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          child: Text('Operações Liquidadas'),
                                        ),
                                        SizedBox( height: 30),
                                        Container(
                                            child: Row(children: <Widget>[
                                          Expanded(
                                            flex: 6,
                                            child: Center(
                                              child: Text(
                                                '2',
                                                style: TextStyle(
                                                  fontSize: 22,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 6,
                                            child: Center(
                                              child: Text(
                                                'R\$ 634.305,00',
                                                style: TextStyle(
                                                  fontSize: 22,
                                                  color: Colors.black
                                                ),
                                              ),
                                            ),
                                          )
                                        ])),
                                        SizedBox( height: 5),
                                        Container(
                                            child: Row(children: <Widget>[
                                          Expanded(
                                            flex: 6,
                                            child: Center(
                                              child: Text(
                                                'Operações',
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 6,
                                            child: Center(
                                              child: Text(
                                                'Saldo Atual',
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ),
                                          )
                                        ])),
                                        SizedBox( height: 20),
                                        Container(
                                            child: Row(children: <Widget>[
                                          Expanded(
                                            flex: 6,
                                            child: Center(
                                              child: Text(
                                                '-2%',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.green,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 6,
                                            child: Center(
                                              child: Text(
                                                '+5%',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.red,
                                                ),
                                              ),
                                            ),
                                          )
                                        ])),
                                      ])),
                            ),

                            //Novas Operações 
                            Expanded(
                              flex: 3,
                              child: Container(
                                  padding: EdgeInsets.all(10),
                                  margin: EdgeInsets.all(10),
                                  height: 200,
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
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          child: Text('Novas Operações'),
                                        ),
                                        SizedBox( height: 30),
                                        Container(
                                            child: Row(children: <Widget>[
                                          Expanded(
                                            flex: 6,
                                            child: Center(
                                              child: Text(
                                                '7',
                                                style: TextStyle(
                                                  fontSize: 22,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 6,
                                            child: Center(
                                              child: Text(
                                                'R\$ 100.000,00',
                                                style: TextStyle(
                                                  fontSize: 22,
                                                  color: Colors.black
                                                ),
                                              ),
                                            ),
                                          )
                                        ])),
                                        SizedBox( height: 5),
                                        Container(
                                            child: Row(children: <Widget>[
                                          Expanded(
                                            flex: 6,
                                            child: Center(
                                              child: Text(
                                                'Operações',
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 6,
                                            child: Center(
                                              child: Text(
                                                'Saldo Atual',
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ),
                                          )
                                        ])),
                                        SizedBox( height: 20),
                                        Container(
                                            child: Row(children: <Widget>[
                                          Expanded(
                                            flex: 6,
                                            child: Center(
                                              child: Text(
                                                '+2%',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.green,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 6,
                                            child: Center(
                                              child: Text(
                                                '+5%',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.green,
                                                ),
                                              ),
                                            ),
                                          )
                                        ])),
                                      ])),
                            ),

                            //Operações Inadimplentes 
                           Expanded(
                              flex: 3,
                              child: Container(
                                  padding: EdgeInsets.all(10),
                                  margin: EdgeInsets.all(10),
                                  height: 200,
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
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          child: Text('Operações Inadimplentes'),
                                        ),
                                        SizedBox( height: 30),
                                        Container(
                                            child: Row(children: <Widget>[
                                          Expanded(
                                            flex: 6,
                                            child: Center(
                                              child: Text(
                                                '1',
                                                style: TextStyle(
                                                  fontSize: 22,
                                                  color: Colors.red,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 6,
                                            child: Center(
                                              child: Text(
                                                'R\$ 100.000,00',
                                                style: TextStyle(
                                                  fontSize: 22,
                                                  color: Colors.red
                                                ),
                                              ),
                                            ),
                                          )
                                        ])),
                                        SizedBox( height: 5),
                                        Container(
                                            child: Row(children: <Widget>[
                                          Expanded(
                                            flex: 6,
                                            child: Center(
                                              child: Text(
                                                'Operações',
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 6,
                                            child: Center(
                                              child: Text(
                                                'Saldo Atual',
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ),
                                          )
                                        ])),
                                        SizedBox( height: 20),
                                        Container(
                                            child: Row(children: <Widget>[
                                          Expanded(
                                            flex: 6,
                                            child: Center(
                                              child: Text(
                                                '-2%',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.green,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 6,
                                            child: Center(
                                              child: Text(
                                                '+5%',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.red,
                                                ),
                                              ),
                                            ),
                                          )
                                        ])),
                                      ])),
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
                                  child: Row(children: <Widget>[
                                    Expanded(
                                      flex: 4,
                                      child: Chart00(),
                                    ),
                                    Expanded(
                                      flex: 8,
                                      child: Chart04(),
                                    )
                                  ])),
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
                                child: Chart05(),
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
                                child: Chart06(),
                              ),
                            ),
                            Expanded(
                              flex: 6,
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
                                child: Chart07(),
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
                color: const Color(0xFFFFFFFF),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
