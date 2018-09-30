import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flitter/ui/components/tweet_item.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _homeListItems = List<TweetItem>.generate(
      8,
      (i) => TweetItem(),
    );
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(36.0),
          child: AppBar(
            elevation: 0.8,
            leading: Icon(Icons.account_circle, size: 36.0,color: Colors.blueGrey),
            title: Text('Home',
                style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w700)),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                child: Center(
                    child: Icon(Icons.edit,
                        size: 26.0, color: Colors.lightBlue)),
              ),
            ],
          ),
        ),
        body: ListView.builder(
            itemCount: _homeListItems.length,
            itemBuilder: (context, index) {
              return _homeListItems[index];
            }),
      ),
    );
  }
}

