import 'package:flutter/material.dart';

import 'category.dart';

const _padding = EdgeInsets.all(16.0);
const _categoryName = 'Cake';
const _categoryIcon = Icons.cake;
const _categoryColor = Colors.green;

void main() {
  runApp(UnitConverterApp());
}

/// This widget is the root of our application.
/// Currently, we just show one widget in our app.
class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter',
      home: Scaffold(
        backgroundColor: Colors.green[100],
        body: Center(
          // TODO: Determine what properties you'll need to pass into the widget
          child: Category(
            name: _categoryName,
            color: _categoryColor,
            iconLocation: _categoryIcon,
          ),
        ),
      ),
    );
  }
}

class HelloRectangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrange,
      height: 200.0,
      width: 300.0,
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'HelloRectangle!',
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.purple,
            ),
          ),
        ),
      ),
    );
  }
}
