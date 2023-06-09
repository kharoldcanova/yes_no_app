import 'package:flutter/material.dart';

const Color _customColor = Color.fromARGB(194, 12, 16, 213);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.yellow,
  Colors.black,
  Colors.cyan,
];

class AppTheme {

  final int selectedColor;

  AppTheme({this.selectedColor = 0}): assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1, 
  'Colors theme between in 0 and ${_colorThemes.length}');

  ThemeData theme(){
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
      brightness: Brightness.light,
    );
  }
}