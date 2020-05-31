import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final setLightTheme = _buildLightTheme();
final setDarkTheme = _buildDarkTheme();

ThemeData _buildLightTheme() {
  return ThemeData(
    primarySwatch: Colors.blue,
    primaryColor: Colors.amber,
    brightness: Brightness.light,
    backgroundColor: const Color(0xFFE5E5E5),
    accentColor: Colors.amber,
    accentIconTheme: IconThemeData(color: Colors.black),
    dividerColor: Colors.black38,
  );
}

ThemeData _buildDarkTheme() {
  return ThemeData(
    primaryColor: Colors.black,
    primarySwatch: Colors.grey,
    brightness: Brightness.dark,
    backgroundColor: const Color(0xFF212121),
    accentColor: Colors.white,
    accentIconTheme: IconThemeData(color: Colors.white),
    dividerColor: Colors.white,
  );
}
