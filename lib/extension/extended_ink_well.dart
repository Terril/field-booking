import 'package:flutter/material.dart';

extension ExtendedInkWell on Widget {
  addSplash() {
    return InkWell(
      onTap: () {},
      splashColor: Colors.lightGreen,
      child: this,
    );
  }
}
