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
    return Material(
      color: Colors.transparent,
      child: Container(
        height: 100.0,
        padding: EdgeInsets.all(8.0),
        child: InkWell(
          highlightColor: color,
          splashColor: color,
          borderRadius: BorderRadius.circular(100.0 / 2),
          onTap: () => print('test'),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Icon(
                  icon,
                  size: 60.0,
                ),
              ),
              Center(
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
