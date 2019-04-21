import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(36.0),
          child: AppBar(
            elevation: 0.8,
            leading:
                Icon(Icons.account_circle, size: 36.0, color: Colors.blueGrey),
            title: Text('Home',
                style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w700)),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                child: Center(
                    child:
                        Icon(Icons.edit, size: 26.0, color: Colors.lightBlue)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
