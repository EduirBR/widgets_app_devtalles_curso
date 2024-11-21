import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.red,
  Colors.yellow,
  Colors.green,
  Colors.pink,
  Colors.orangeAccent,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor < colorList.length,
            'SelectedColor must be on range of 0 and ${colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
      colorSchemeSeed: colorList[selectedColor],
      //themas para el appbar
      appBarTheme: const AppBarTheme(centerTitle: false));
}
