import 'package:flutter/material.dart';

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.red.shade900,
  scaffoldBackgroundColor: const Color(0xFF121212),
  colorScheme: ColorScheme.dark(
    primary: Colors.red.shade900,
    secondary: Colors.grey.shade600,
    background: const Color(0xFF121212),
    surface: const Color(0xFF1E1E1E),
    onPrimary: Colors.white,
    onSecondary: Colors.white70,
    onBackground: Colors.white70,
    onSurface: Colors.white70,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF1B1B1B),
    foregroundColor: Colors.redAccent,
    elevation: 1,
    titleTextStyle: TextStyle(
      color: Colors.redAccent,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      fontFamily: 'CourierNew',
    ),
  ),
  textTheme: const TextTheme(
    headlineMedium: TextStyle(
      color: Colors.redAccent,
      fontSize: 28,
      fontWeight: FontWeight.bold,
      fontFamily: 'CourierNew',
    ),
    bodyLarge: TextStyle(
      color: Colors.white70,
      fontSize: 16,
      fontFamily: 'CourierNew',
    ),
    bodyMedium: TextStyle(
      color: Colors.grey,
      fontSize: 14,
      fontFamily: 'CourierNew',
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.red.shade900,
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 28),
      textStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: 'CourierNew',
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: const Color(0xFF2A2A2A),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Colors.red.shade900),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Colors.redAccent, width: 2),
    ),
    labelStyle: const TextStyle(color: Colors.redAccent, fontFamily: 'CourierNew'),
    hintStyle: const TextStyle(color: Colors.grey),
  ),
);
