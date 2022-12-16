import 'package:flutter/material.dart';

class AppTheme {
  static const Color borderInputColor = Colors.white;

  static final ThemeData lightTheme = ThemeData.light().copyWith(

        inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: borderInputColor),

          fillColor: Colors.white,
          hintStyle: TextStyle(color: Colors.white),

          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: borderInputColor
            ),
          ),

          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: borderInputColor
            ),
          ),

          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: borderInputColor
            ),
          ),
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.blue[800],
            elevation: 0
          )
        ),
      );
}