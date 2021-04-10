import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

ThemeData kappTheme(BuildContext context) {
  return ThemeData(
    primarySwatch: Colors.red,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
  );
}
