// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// To keep your imports tidy, follow the ordering guidelines at
// https://www.dartlang.org/guides/language/effective-dart/style#ordering
import 'package:flutter/material.dart';

final _rowHeight = 100.0;
final _borderRadius = BorderRadius.circular(_rowHeight / 2);

class Category extends StatelessWidget {
  final IconData iconLocation;
  final ColorSwatch color;
  final String name;

  const Category({
    Key key,
    @required this.iconLocation,
    @required this.color,
    @required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: InkWell(
        borderRadius: _borderRadius,
        highlightColor: color,
        splashColor: color,
        onTap: () {
          print('I was tapped!');
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Icon(
                  iconLocation,
                  size: 60.0,
                ),
              ),
              Center(
                  child: Text(
                name,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline,
              )),
            ],
          ),
        ),
      ),
    );
  }
}
