import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
  return CupertinoTabBar(
    backgroundColor: Colors.white,
    activeColor: Colors.lightBlue,
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: new Icon(Icons.home, size: 28.0),
        title: Text('',style: TextStyle(fontSize: 0.0)),
      ),
      BottomNavigationBarItem(
        icon: Icon(FontAwesomeIcons.search, size: 24.0),
        title: Text('',style: TextStyle(fontSize: 0.0)),
      ),
      BottomNavigationBarItem(
        icon: Icon(FontAwesomeIcons.bell, size: 24.0),
        title: Text('',style: TextStyle(fontSize: 0.0)),
      ),
      BottomNavigationBarItem(
        icon: Icon(FontAwesomeIcons.envelope, size: 24.0),
        title: Text('',style: TextStyle(fontSize: 0.0)),
      ),
    ],
  );
}