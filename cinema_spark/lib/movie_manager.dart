import 'package:flutter/material.dart';

import './movies.dart';

class MovieManager extends StatefulWidget {
  final String startingMovie;

  MovieManager(this.startingMovie);

  @override
  State<StatefulWidget> createState() {
    return _MovieManagerState();
  }
}

class _MovieManagerState extends State<MovieManager> {
  List<String> _movies = [];
  String displayedString = "";

  @override
  void initState() {
    _movies.add(widget.startingMovie);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(displayedString),

      Container(
        margin: EdgeInsets.all(25.0),
        child: RaisedButton(
          onPressed: () {
            setState(() {
            displayedString = "Captian Marvel Trailer";
            });
          },
          child: Text('Watch a new Trailer!'),
        ),
      ),
      Movies(_movies)
    ]);
  }
}
