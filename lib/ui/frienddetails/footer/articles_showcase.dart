import 'package:flutter/material.dart';

class ArticlesShowcase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return new Center(
      child: new Text(
        'Articles: TODO',
        style: textTheme.title.copyWith(color: Colors.white),
      ),
    );
  }
}