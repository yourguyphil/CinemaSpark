import 'package:flutter/material.dart';

import './movie_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  //Tree of widgets
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //This is a property, convention add underscore
  List<String> _movies = ['Captain Marvel'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Cinema Spark'),
          ),
          body: MovieManager("Captain Marvel"),
    ),
  );
}
}
