import 'package:flutter/material.dart';

class AppTheme
{
  static bool isDark  = true;
  static Color lightPrimary = const Color(0xFFB7935f);
  static Color darkPrimary = const Color(0xFF141A2E);
  static Color darkSecondary = const Color(0xFFFACC1D);
  static ThemeData lightTheme = ThemeData(
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(
        size: 30,
      ),
      unselectedIconTheme: IconThemeData(
          size: 20
      ),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.white,
    ),
    textTheme: TextTheme(
      titleLarge: const TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      labelMedium: const TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.bold,

      ),
      bodyMedium: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w400,
        fontSize: 20,
      ),
      labelSmall: const TextStyle(
        fontSize: 16,
        color: Colors.black,
      ),
      labelLarge: TextStyle(
        fontSize: 20,
        color: lightPrimary,
      ),
    ),
    cardTheme: const CardTheme(
      color: Colors.white,
      margin: EdgeInsets.all(20),
      elevation: 10,
      surfaceTintColor: Colors.transparent,

    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(
        fontSize: 24,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    ),
    colorScheme: ColorScheme.fromSeed(seedColor: lightPrimary,
      primary: lightPrimary,
      secondary: const Color(0xFFC9b396),
      onPrimary: Colors.white,
      onSecondary: Colors.black,
    ),
    dividerColor: lightPrimary,
    useMaterial3: true,
  );
  static ThemeData darkTheme = ThemeData(
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: darkSecondary,
      unselectedItemColor: Colors.white,
      selectedIconTheme: const IconThemeData(
        size: 30,
      ),
      unselectedIconTheme: const IconThemeData(
          size: 20
      ),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(
        fontSize: 24,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: darkPrimary,
    ),
    cardTheme: CardTheme(
      color: darkPrimary,
      margin: const EdgeInsets.all(20),
      elevation: 10,
      surfaceTintColor: Colors.transparent,
    ),
    colorScheme: ColorScheme.fromSeed(seedColor: darkSecondary,
      primary: darkPrimary,
      secondary: darkSecondary,
      onPrimary: Colors.white,
      onSecondary: Colors.black,
    ),
    dividerColor: darkSecondary,
    textTheme: TextTheme(
      titleLarge: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      labelMedium: const TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        color: darkSecondary,
        fontWeight: FontWeight.w400,
        fontSize: 20,

      ),
      labelSmall: const TextStyle(
        fontSize: 16,
        color: Colors.white,
      ),
      labelLarge: TextStyle(
        fontSize: 20,
        color: darkSecondary,
      ),
    ),
    useMaterial3: true,
  );
}