import 'package:flutter/material.dart';

const List<Color> _colorThemes = [
  Colors.lightGreen,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;
  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
            'colors must be between 0 and ${_colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
    );
  }
}
