import 'package:dobavnice_app/models/constants.dart';
import 'package:flutter/material.dart';

/* INFO: 
   Themes, which can be used in other files. 
*/


class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: Color(0xff489FE8), 
    scaffoldBackgroundColor: Colors.white, 
    dividerColor: Color.fromARGB(255, 137, 138, 138), 
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: Color(0xff489FE8),
        fontFamily: Constants.semiBold,
        fontSize: 16,
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white, 
      iconTheme: IconThemeData(
        color: Colors.black, 
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Color(0xff489FE8), 
      unselectedItemColor: Colors.grey, 
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
      ),
    ),
  );
}
