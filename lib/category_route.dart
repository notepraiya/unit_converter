import 'package:flutter/material.dart';
import 'package:unit_converter/category.dart';
import 'package:unit_converter/unit.dart';

class CategoryRoute extends StatefulWidget {
  final String title;
  const CategoryRoute(this.title);

  @override
  _CategoryRouteState createState() => _CategoryRouteState();
}

class _CategoryRouteState extends State<CategoryRoute> {
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

  List<Unit> _retrieveUnitList(String categoryName) {
    return List.generate(10, (int i) {
      i++;
      return Unit(
        name: '$categoryName Unit $i',
        conversion: i.toDouble(),
      );
    });
  }

  final _categories = <Category>[];

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < _categoryNames.length; i++) {
      _categories.add(Category(
        title: _categoryNames[i],
        color: _categoryColors[i],
        icon: Icons.cake,
        units: _retrieveUnitList(_categoryNames[i]),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
        title: Text(
          widget.title,
          style: TextStyle(
            fontSize: 24.0,
          ),
        ),
      ),
      body: Container(
        color: Colors.lightBlue,
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView.builder(
          itemBuilder: (BuildContext context, int idx) => _categories[idx],
          itemCount: 8,
        ),
      ),
    );

  }
}
