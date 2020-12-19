import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class Category extends StatelessWidget {
  final String title;
  final ColorSwatch color;
  final IconData icon;

  const Category({
    Key key,
    @required this.title,
    @required this.color,
    @required this.icon,
  })  : assert(title != null),
        assert(color != null),
        assert(icon != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Text(title),
    );
  }
}
