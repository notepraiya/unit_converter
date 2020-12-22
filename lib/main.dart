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
      theme: ThemeData(
        fontFamily: 'Raleway',
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: Colors.black,
          displayColor: Colors.grey[600],
        ),
        primaryColor: Colors.grey[500],
        textSelectionHandleColor: Colors.green[500],
      ),
      home: CategoryRoute(),
    );
  }
}
