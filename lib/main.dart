import 'package:flutter/material.dart';
import 'package:unit_converter/screen_category.dart';

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
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.lightBlue,
          centerTitle: true,
          title: Text(
            title,
            style: TextStyle(
              fontSize: 24.0,
            ),
          ),
        ),
        body: ScreenCategory(),
      ),
    );
  }
}
