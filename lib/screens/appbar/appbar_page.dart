import 'package:flutter/material.dart';

class AppBarDash extends StatefulWidget {
  @override
  _AppBarDash createState() => _AppBarDash();
}

class _AppBarDash extends State<AppBarDash> {
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [const Color(0xFF2B2E47), const Color(0xFF2B2E47)],
      )),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Theme.of(context).dividerColor,
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
    );
  }
}
