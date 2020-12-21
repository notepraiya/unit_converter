import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'unit.dart';

class Category {
  final String name;
  final ColorSwatch color;
  final IconData icon;
  final List<Unit> units;

  const Category({
    @required this.name,
    @required this.color,
    @required this.icon,
    @required this.units,
  })  : assert(name != null),
        assert(color != null),
        assert(icon != null),
        assert(units != null);
}
