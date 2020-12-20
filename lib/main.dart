import 'package:flutter/material.dart';
import 'package:unit_converter/category_route.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  final String title = 'Unit Converter App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: CategoryRoute(title),
    );
  }
}
