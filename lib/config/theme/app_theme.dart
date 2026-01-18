import 'package:flutter/material.dart';

class AppTheme {
  static const List<Color> colors = [
    Colors.blue,
    Colors.indigo,
    Colors.purple,
    Colors.deepPurple,
    Colors.pink,
    Colors.red,
    Colors.orange,
    Colors.amber,
    Colors.yellow,
    Colors.green,
    Colors.teal,
    Colors.cyan,
  ];

  final int selectedColor;

  AppTheme({this.selectedColor = 0})
    : assert(
        selectedColor >= 0 && selectedColor < colors.length,
        'selectedColor must be between 0 and ${colors.length - 1}',
      );

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: colors[selectedColor]),
    appBarTheme: const AppBarTheme(centerTitle: false),
  );
}
