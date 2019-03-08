import 'package:flutter/material.dart';

class Movies extends StatelessWidget {
//feature movies, final is immutable
  final List<String> movies;

//Storing it in properties in Movies class
  Movies(this.movies);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: movies
            .map((element) => Card(
                  child: Column(
                    children: <Widget>[
                      //special constructor, to load asset
                      Image.asset('assets/FrontImage.PNG'),
                      Text('Developed By: Philips Nguyen')
                    ],
                  ),
                ))
            .toList());
  }
}
