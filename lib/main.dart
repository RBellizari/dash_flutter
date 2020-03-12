import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Troco.Tech',
      theme: ThemeData.dark(),
      home: MyHomePage(title: 'Troco.Tech - Dashboard'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Next page',
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(7), boxShadow: [
          BoxShadow(color: Colors.black26, blurRadius: 4),
        ]),
        child: Row(children: <Widget>[
          Expanded(flex: 3, child:
          Container(
      height: 59,
      color: Theme.of(context).appBarTheme.color,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Theme.of(context).dividerColor,
          backgroundImage: NetworkImage(
            "https://media.licdn.com/dms/image/C5603AQEKYex09zfWlg/profile-displayphoto-shrink_100_100/0?e=1563408000&v=beta&t=5FoN-PaQjLNlPGFqXKW2V4pvUqTPd5QfNNUnovyT5ic",
          ),
        ),
        trailing: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.chat),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
        ),
      ),
    ),
          ),
          Expanded(flex: 7, child: Text('Teste1')),
        ]),
      ),
    );
  }


  
}

 @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(child: Container(color: Color(0xFF009688))),
              Expanded(flex: 6, child: Container(color: Color(0xFFdfdfdf))),
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 1400, maxHeight: 920),
              child: Text('teste2'),
            ),
          ),
        ],
      ),
    );
  }




