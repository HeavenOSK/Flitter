import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flitter/ui/pages/home.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AppState();
}

class AppState extends State<App> {
  List<Widget> _pages = [
    Home(),
    ///Home画面以外は,　今後作成する
    Container(),
    Container(),
    Container(),
  ];
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: _buildFlitterTabBar(),
      tabBuilder: (BuildContext context, int index) {
        return new CupertinoTabView(
          builder: (BuildContext context) {
            return CupertinoPageScaffold(
              child: _pages[index],
            );
          },
        );
      },
    );
  }
}

CupertinoTabBar _buildFlitterTabBar(){
  final iconSize = 28.0;
  return CupertinoTabBar(
    backgroundColor: Colors.white,
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home, size: iconSize),
        title: Text('',style: TextStyle(fontSize: 0.0)),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search, size: iconSize),
        title: Text('',style: TextStyle(fontSize: 0.0)),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.notifications_none, size: iconSize),
        title: Text('',style: TextStyle(fontSize: 0.0)),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.mail_outline, size: iconSize),
        title: Text('',style: TextStyle(fontSize: 0.0)),
      ),
    ],
  );
}