import 'package:flutter/material.dart';
import 'package:flitter/ui/app.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flitter',
      theme: ThemeData(
          primaryColor: Colors.white
      ),
      home: App(),
    );
  }
}

