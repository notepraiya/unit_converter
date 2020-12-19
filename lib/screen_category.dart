import 'package:flutter/material.dart';
import 'package:unit_converter/category.dart';

class ScreenCategory extends StatelessWidget {
  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];
  static const _categoryColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  final _categories = <Category>[];

  ScreenCategory() {
    for (var i = 0; i < _categoryNames.length; i++) {
      _categories.add(Category(
        title: _categoryNames[i],
        color: _categoryColors[i],
        icon: Icons.cake,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: ListView.builder(
        itemBuilder: (BuildContext context, int idx) => _categories[idx],
        itemCount: 8,
      ),
    );
  }
}

