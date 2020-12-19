import 'package:flutter/material.dart';
import 'package:unit_converter/category.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  final String title = 'Unit Converter';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: Scaffold(
        body: Center(
          child: Category(
            title: 'Hello',
            color: Colors.amber,
            icon: Icons.cake,
          ),
        ),
      ),
    );
  }
}
