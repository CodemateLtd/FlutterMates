import 'package:flutter/material.dart';

class SkillsShowcase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return new Center(
      child: new Text(
        'Skills: TODO',
        style: textTheme.title.copyWith(color: Colors.white),
      ),
    );
  }
}
