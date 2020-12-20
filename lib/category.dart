import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:unit_converter/converter_route.dart';
import 'package:unit_converter/unit.dart';

class Category extends StatelessWidget {
  final String title;
  final ColorSwatch color;
  final IconData icon;
  final List<Unit> units;

  const Category({
    Key key,
    @required this.title,
    @required this.color,
    @required this.icon,
    @required this.units,
  })  : assert(title != null),
        assert(color != null),
        assert(icon != null),
        assert(units != null),
        super(key: key);

  void _navigateToConverter(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute<Null>(
      builder: (BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            elevation: 3.0,
            title: Text(
              title,
              style: Theme.of(context).textTheme.headline5,
            ),
            centerTitle: true,
            backgroundColor: color,
          ),
          body: ConverterRoute(
            color: color,
            units: units,
          ),
        );
      },
    ));
  }

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
          onTap: () => _navigateToConverter(context),
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
